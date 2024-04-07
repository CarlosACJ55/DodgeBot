import time
from collections import deque
import cv2 as cv
import numpy as np
import torch
from kmeans_pytorch import kmeans, kmeans_predict
from numpy.linalg import norm as mag

# from src.vision.vision import Vision
from vision import Vision

np.random.seed(42)
X = 0
Y = 1


def Swap(arr, start_index, last_index):
    arr[:, [start_index, last_index]] = arr[:, [last_index, start_index]]
    return arr


class Pathfinder:
    cam = Vision(1)
    buf = [deque([np.zeros(2, dtype=np.float16), np.zeros(2, dtype=np.float16)]), deque([np.zeros(2, dtype=np.float16), np.zeros(2, dtype=np.float16)])]
    px_cent = np.array([360 / 2, 360 / 2], dtype=int)
    center_dist = 1.14
    cam_h = 2.36855
    min_clearance = .2
    cord_centers = torch.tensor([[-.5, -.5], [.5, .5]])
    dodge_time = 0
    radius = .5
    reset_time_sec = 1
    edge_percentage = .5
    bot_center_pos_angle = np.array([90.0, 90.0], dtype=np.float16)
    run_time_dict = {"Marking Pixels":[], "Converting Cords":[],"Kmeans":[],"Buffer":[],"Main Punch":[],"Slope":[], "Punch Vector Calc":[], "Engage Decision":[],"Perpendicular Calc":[],"Avoidance":[], "Total End":[], "Output End":[]}

    def __init__(self, user_h):
        self.user_h = user_h
        # self.edge_percentage = (self.cam_h - user_h) * self.center_dist / (2 * self.cam_h)
        self.real_ratio = (self.cam_h - self.user_h) / self.cam_h
        self.cam.start_stream()
        self.bot_pos = np.array([0.0001, 0.0001], dtype=np.float16)  # TODO: Change this to read the position from the camera
        self.max_edge_cords = self.angle_2_cords(np.array([45, 45], dtype=np.float16))[0:2]
        self.max_edge_length = mag(self.max_edge_cords) * self.edge_percentage
                
        
    
    def center_bot(self):
        if (abs(self.bot_pos[0]) <= .01 and abs(self.bot_pos[1]) <= .01):
            return None
        else:
            print(f"Bot is being centered {-self.bot_pos}")
            # print(f"{self.bot_center_pos_angle} - {self.cords_2_angle(self.bot_pos)}")
            # temp = self.bot_center_pos_angle - self.cords_2_angle(self.bot_pos)
            ############################################################
            self.bot_pos[0] = 0.00001
            self.bot_pos[1] = 0.00001
            return self.bot_center_pos_angle - self.cords_2_angle(self.bot_pos)
            
    
    def angle_2_cords(self, angle_vector):
        robot_theta = angle_vector * (np.pi / 180)
        return np.array([self.radius*np.cos(robot_theta[1]), self.radius*np.cos(robot_theta[0])*np.sin(robot_theta[1]), self.radius*np.sin(robot_theta[0])*np.sin(robot_theta[1])], dtype=np.float16) 

    def cords_2_angle(self, cords_vector):
        dodge_vector_z = np.sqrt(self.radius**2 - (cords_vector[0]**2 + cords_vector[1]**2))
        dodge_theta0 = np.arctan2(dodge_vector_z, cords_vector[1]) * (180/np.pi)
        dodge_theta1 = np.arccos(cords_vector[0] / self.radius) * (180/np.pi)
        return np.array([dodge_theta0, dodge_theta1], dtype=np.float16)
    
    def pixel_2_cords(self, pixel):
        pixel_loc = np.array([pixel[1], pixel[0]]) if len(pixel.shape) == 1 else Swap(pixel, 0, 1)
        real_dist_cords = self.real_ratio * self.center_dist * (pixel_loc - self.px_cent) / self.px_cent
        return (real_dist_cords * np.array([1, -1])).astype(np.float32)

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
                
                punch1_pixel_torch = identified_punch_coords[cluster_lbl == 0]
                punch2_pixel_torch = identified_punch_coords[cluster_lbl == 1]
                
                self.cord_centers = torch.stack((torch.mean(punch1_pixel_torch, 0), torch.mean(punch2_pixel_torch, 0)))
                if self.cord_centers.isnan().any():
                    self.kmeans_gpu(coords, 2)
                    
                return [punch1_pixel_torch, punch2_pixel_torch], self.cord_centers
            except IndexError:
                return [coords], self.cord_centers
            except ValueError:
                return [coords], self.cord_centers
        else:
            return [], torch.tensor([[float('nan'), -.5], [.5, .5]])

    def detect_punch(self):
        st = time.time()
        raw_glove_data, frame = self.cam.read_gloves()
        marked_coords = self.pixel_2_cords(raw_glove_data)
        # print(marked_coords)
        
        cord_list, test_cord_centers = self.kmeans_gpu(marked_coords, 2)
        self.run_time_dict["Kmeans"].append(time.time() - st)
        # print(time.time()-st)
        # print(test_cord_centers)
        if len(cord_list) < 2:
            #######################
            # cv.circle(frame, tuple(self.cords_2_pixel(self.bot_pos)[::-1]), 25, (0, 0, 0), -1)
            cv.circle(frame, tuple(self.cords_2_pixel(self.bot_pos)[::-1]), 25, (150, 150, 150), -1)
            # print("!!!!!!!!!!!!!!Len < 2!!!!!!!!!!!!!!!!!")
            ######################
            self.cord_centers = torch.tensor([[float('nan'), -.5], [.5, .5]])
            return self.center_bot()
        # print("buf before", self.buf)
        self.buf[0].appendleft(test_cord_centers[0].numpy())
        self.buf[0].pop()
        self.buf[1].appendleft(test_cord_centers[1].numpy())
        self.buf[1].pop()
        self.run_time_dict["Buffer"].append(time.time() - st)
    #    Main Punch":[],"Slope"
            
        close, far = (0, 1) if mag(self.buf[0][0] - self.bot_pos) < mag(self.buf[1][0] - self.bot_pos) else (1, 0)
        # print(close, far)
        ####################
        cv.circle(frame, tuple(self.cords_2_pixel(self.buf[close][0])[::-1]), 15, (0, 0, 255), -1)
        cv.circle(frame, tuple(self.cords_2_pixel(self.buf[far][0])[::-1]), 5, (0, 255, 0), -1)
        ###################
        # print("buf close", self.buf[close], "test_cord_centers", test_cord_centers)
        punch_pos = self.buf[close][0]
        punch_diff = punch_pos - self.buf[close][1]
        punch_mag = mag(punch_diff)
        punch_hat = punch_diff / punch_mag
        self.run_time_dict["Main Punch"].append(time.time()-st)
       
        if punch_mag < .05:
            if time.time() - self.dodge_time >= self.reset_time_sec:
                #######################
                cv.circle(frame, tuple(self.cords_2_pixel(self.bot_pos)[::-1]), 25, (0, 0, 0), -1)
                ######################
                return self.center_bot()
            else:
                #######################
                cv.circle(frame, tuple(self.cords_2_pixel(self.bot_pos)[::-1]), 25, (0, 0, 0), -1)
                return None
                ######################
            # return self.center_bot()
            
        self.dodge_time = time.time()
        m = punch_diff[Y] / punch_diff[X]
        
        y_offset = punch_pos[Y] - m * punch_pos[X]
        clearance = np.abs((m*self.bot_pos[0] + y_offset) - self.bot_pos[1])
        if clearance > self.min_clearance:
            #######################
            cv.circle(frame, tuple(self.cords_2_pixel(self.bot_pos)[::-1]), 25, (0, 0, 0), -1)
            ######################
            return None
        self.run_time_dict["Slope"].append(time.time()-st)
        perp_left = np.array([punch_hat[Y], -punch_hat[X]])
        perp_right = np.array([-punch_hat[Y], punch_hat[X]])
        # print("perp left, right", perp_left, perp_right)
        
        if mag(self.bot_pos) < self.max_edge_length:
            print("Center Dodge")
            player_pos_v = ((punch_pos + self.buf[far][0]) / 2) - self.bot_pos
            player_pos_v_hat = player_pos_v / mag(player_pos_v)
            perp = perp_left if mag(perp_left - player_pos_v_hat) >= mag(perp_right - player_pos_v_hat) else perp_right
            
            dodge = np.abs(self.min_clearance - clearance) * perp + self.min_clearance * perp
            
        else:
            print("Edge Dodge")
            perp = perp_left if mag(perp_left + self.bot_pos) < mag(perp_right + self.bot_pos) else perp_right
            unit_dodge = .5*(-self.bot_pos / mag(self.bot_pos)) + .5*(perp)
            dodge = np.abs(self.min_clearance - clearance) * unit_dodge + 1.5 * self.min_clearance * unit_dodge
            # print("bot pos", self.bot_pos, "unit doge", unit_dodge, "perp", perp)
        self.run_time_dict["Avoidance"].append(time.time()-st)
        bot_prev_pos_angle = self.cords_2_angle(self.bot_pos)
        ##################
        cv.circle(frame, tuple(self.cords_2_pixel(self.bot_pos)[::-1]), 25, (255, 255, 0), -1)
        ##################
        # print("prev pos", self.bot_pos, "dodge", dodge)
        self.bot_pos = self.bot_pos + dodge
        ##################
        cv.circle(frame, tuple(self.cords_2_pixel(self.bot_pos)[::-1]), 25, (255, 255, 255), -1)
        ##################
        # if np.isnan(self.cords_2_angle(self.bot_pos) - bot_prev_pos_angle).any() == True:
        #     print(locals())
        #     print()
            # print("************NAN*************\n"*2)
            # print("botpos", self.bot_pos)
            # print("edge", self.pixel_2_cords(np.array([[0,1], [1,0]])))
            # print(f"{self.cords_2_angle(self.bot_pos)} - {bot_prev_pos_angle}")
            # print("************NAN*************\n"*2)
        self.run_time_dict["Total End"].append(time.time()-st)
        print("Kmeans: ", self.run_time_dict["Kmeans"][-1])
        print("Main Punch: " self.run_time_dict["Main Punch"][-1], self.run_time_dict["Slope"][-1], self.run_time_dict["Avoidance"][-1], self.run_time_dict["Total End"][-1])
        return self.cords_2_angle(self.bot_pos) - bot_prev_pos_angle
