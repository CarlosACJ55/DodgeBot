import time
from collections import deque
import cv2 as cv
import numpy as np
import torch
from kmeans_pytorch import kmeans, kmeans_predict
from numpy.linalg import norm as mag

from src.vision.vision import Vision

np.random.seed(42)
X = 0
Y = 1


def Swap(arr, start_index, last_index):
    arr[:, [start_index, last_index]] = arr[:, [last_index, start_index]]
    return arr


class Pathfinder:
    cam = Vision(1)
    buf = deque([(np.zeros(2, dtype=float), np.zeros(2, dtype=float)) for _ in range(2)])
    px_cent = np.array([360 / 2, 360 / 2], dtype=int)
    center_dist = 1.14
    cam_h = 2.36855
    min_clearance = .15
    cord_centers = torch.tensor([[-.5, -.5], [.5, .5]])
    dodge_time = 0
    radius = .5
    reset_time_sec = 1
    edge_percentage = .5
    bot_center_pos_angle = np.array([90.0, 90.0], dtype=float)
    

    def __init__(self, user_h):
        self.user_h = user_h
        # self.edge_percentage = (self.cam_h - user_h) * self.center_dist / (2 * self.cam_h)
        self.real_ratio = (self.cam_h - self.user_h) / self.cam_h
        self.cam.start_stream()
        self.bot_pos = np.array([0, 0])  # TODO: Change this to read the position from the camera
        self.max_edge_cords = self.angle_2_cords(np.array([45, 45]))[0:2]
        self.max_edge_length = mag(self.max_edge_cords)
        
        
    
    def center_bot(self):
        print(f"Bot is being centered {-self.bot_pos}")
        if (abs(self.bot_pos[0]) <= .01 and abs(self.bot_pos[1]) <= .01):
            return None
        else:
            return self.bot_center_pos_angle - self.cords_2_angle(self.bot_pos)
            
    
    def angle_2_cords(self, angle_vector):
        robot_theta = angle_vector * (np.pi / 180)
        return np.array([self.radius*np.cos(robot_theta[1]), self.radius*np.cos(robot_theta[0])*np.sin(robot_theta[1]), self.radius*np.sin(robot_theta[0])*np.sin(robot_theta[1])]) 

    def cords_2_angle(self, cords_vector):
        dodge_vector_z = np.sqrt(self.radius**2 - (cords_vector[0]**2 + cords_vector[1]**2))
        dodge_theta0 = np.arctan2(dodge_vector_z, cords_vector[1]) * (180/np.pi)
        dodge_theta1 = np.arccos(cords_vector[0] / self.radius) * (180/np.pi)
        return np.array([dodge_theta0, dodge_theta1])
    
    def pixel_2_cords(self, pixel):
        pixel_loc = np.array([pixel[1], pixel[0]]) if len(pixel.shape) == 1 else Swap(pixel, 0, 1)
        real_dist_cords = self.real_ratio * self.center_dist * (pixel_loc - self.px_cent) / self.px_cent
        return real_dist_cords * np.array([1, -1])

    def cords_2_pixel(self, coords):
        dist = self.real_ratio * self.center_dist
        pixel_xy_ratio = coords * np.array([-1, 1]) / dist
        pixel_xy = pixel_xy_ratio * self.px_cent
        pixel_location = self.px_cent - pixel_xy
        temp = pixel_location.copy()
        if len(temp.shape) == 1:
            pixel_location[0] = temp[1]
            pixel_location[1] = temp[0]
        else:
            pixel_location = Swap(temp, 0, 1)
        return pixel_location.astype('uint16')

    def kmeans_gpu(self, coords, n):
        cluster_lbl = None
        if coords.size > 0:
            identified_punch_coords = torch.from_numpy(coords)
            try:
                if self.cord_centers.isnan().any():
                    cluster_lbl, punch_centers = kmeans(X=identified_punch_coords, num_clusters=n, device='cuda:0')
                elif len(self.cord_centers.shape) == 2:
                    cluster_lbl = kmeans_predict(identified_punch_coords, self.cord_centers, device='cuda:0')
                punch1_pixel = coords[cluster_lbl == 0]
                punch2_pixel = coords[cluster_lbl == 1]
                self.cord_centers_centers = torch.Tensor([np.mean(punch1_pixel, axis=0), np.mean(punch2_pixel, axis=0)])
                punch_pixels = [punch1_pixel, punch2_pixel]
                return punch_pixels, self.cord_centers
            except IndexError:
                return [coords], self.cord_centers
            except ValueError:
                return [coords], self.cord_centers
        else:
            return [], torch.tensor([[float('nan'), -.5], [.5, .5]])

    def detect_punch(self):
        raw_glove_data, frame = self.cam.read_gloves()
        marked_coords = self.pixel_2_cords(raw_glove_data)
        cord_list, cord_centers = self.kmeans_gpu(marked_coords, 2)
        if len(cord_list) < 2:
            #######################
            # cv.circle(frame, tuple(self.cords_2_pixel(self.bot_pos)[::-1]), 25, (0, 0, 0), -1)
            cv.circle(frame, tuple(self.cords_2_pixel(self.bot_pos)[::-1]), 25, (150, 150, 150), -1)
            ######################
            self.cord_centers = torch.tensor([[float('nan'), -.5], [.5, .5]])
            return self.center_bot()
            
        self.buf.appendleft((cord_centers[0].numpy(), cord_centers[1].numpy()))
        self.buf.pop()
        close, far = (0, 1) if mag(self.buf[0][0] - self.bot_pos) > mag(self.buf[1][0] - self.bot_pos) else (1, 0)
        
        ####################
        cv.circle(frame, tuple(self.cords_2_pixel(self.buf[0][close])[::-1]), 15, (0, 0, 255), -1)
        cv.circle(frame, tuple(self.cords_2_pixel(self.buf[0][far])[::-1]), 5, (0, 255, 0), -1)
        ###################
        
        punch_pos = self.buf[0][close]
        punch_diff = punch_pos - self.buf[1][close]
        punch_mag = mag(punch_diff)
        punch_hat = punch_diff / punch_mag
        if punch_mag < .04:
            #######################
            cv.circle(frame, tuple(self.cords_2_pixel(self.bot_pos)[::-1]), 25, (50, 50, 50), -1)
            ######################
            return self.center_bot()
            
        self.dodge_time = time.time()
        m = punch_diff[Y] / punch_diff[X]
        y_offset = punch_pos[Y] - m * punch_pos[X]
        clearance = np.abs((m*self.bot_pos[0] + y_offset) - self.bot_pos[1])
        if clearance > self.min_clearance:
            #######################
            cv.circle(frame, tuple(self.cords_2_pixel(self.bot_pos)[::-1]), 25, (0, 0, 0), -1)
            ######################
            return self.center_bot()
        
        if time.time() - self.dodge_time >= self.reset_time_sec:
            #######################
            cv.circle(frame, tuple(self.cords_2_pixel(self.bot_pos)[::-1]), 25, (0, 0, 0), -1)
            ######################
            return self.center_bot()
        
        perp_left = np.array([punch_hat[Y], -punch_hat[X]])
        perp_right = np.array([-punch_hat[Y], punch_hat[X]])
        
        if mag(self.bot_pos) < self.max_edge_length:
            player_pos_v = ((punch_pos + self.buf[0][far]) / 2) - self.bot_pos
            player_pos_v_hat = player_pos_v / mag(player_pos_v)
            perp = perp_left if mag(perp_left - player_pos_v_hat) >= mag(perp_right - player_pos_v_hat) else perp_right
            dodge = np.abs(self.min_clearance - clearance) * perp + self.min_clearance * perp
            
        else:
            perp = perp_left if mag(perp_left + self.bot_pos) < mag(perp_right + self.bot_pos) else perp_right
            unit_dodge = (np.array([perp[X], perp[Y]]) - self.bot_pos / mag(self.bot_pos)) / 2
            dodge = np.abs(self.min_clearance - clearance) * unit_dodge + 1.5 * self.min_clearance * unit_dodge
        
        bot_prev_pos_angle = self.cords_2_angle(self.bot_pos)
        ##################
        cv.circle(frame, tuple(self.cords_2_pixel(self.bot_pos)[::-1]), 25, (255, 255, 0), -1)
        ##################
        self.bot_pos = self.bot_pos + dodge
        ##################
        cv.circle(frame, tuple(self.cords_2_pixel(self.bot_pos)[::-1]), 25, (255, 255, 255), -1)
        ##################
        
        return self.cords_2_angle(self.bot_pos) - bot_prev_pos_angle
