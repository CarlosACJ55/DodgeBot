import time
from collections import deque
import cv2 as cv
import numpy as np
import torch
from kmeans_pytorch import kmeans, kmeans_predict
from numpy.linalg import norm as mag

from src.pathfiner.vision import Vision
# from vision import Vision
ROBOT_HEIGHT = (.889) + (.18) # table + motor set up
ENCODER_SCALER = 0
np.random.seed(42)
X = 0
Y = 1


def Swap(arr, start_index, last_index):
    arr[:, [start_index, last_index]] = arr[:, [last_index, start_index]]
    return arr


class Pathfinder:
    buf = [deque([np.array([np.nan, 0.0], dtype=np.float32), np.array([np.nan, 0.0], dtype=np.float32)]), deque([np.array([np.nan, 0.0], dtype=np.float32), np.array([np.nan, 0.0], dtype=np.float32)])]
    px_cent = np.array([360 / 2, 360 / 2], dtype=int)
    center_dist = .8509 #on the the robot plnae
    cam_h = 2.72 - ROBOT_HEIGHT
    # cam_h = 2.4384 - ROBOT_HEIGHT
    min_clearance = .17
    cord_centers = torch.tensor([[-.5, -.5], [.5, .5]])
    dodge_time = 0
    radius = .5207 #20 inch
    radius_pixel = (radius/center_dist)*px_cent[0]
    reset_time_sec = 1
    edge_percentage = .25
    bot_center_pos_angle = np.array([90.0, 90.0], dtype=np.float32)
    run_time_dict = {"Marking Pixels":[], "Converting Cords":[],"Kmeans":[],"Buffer":[],"Main Punch":[],"Slope":[], "Punch Vector Calc":[], "Engage Decision":[],"Perpendicular Calc":[],"Avoidance":[], "Total End":[], "Output End":[]}
    identified_gloves_bool = False
    x_coeff = 1
    y_coeff = 1.01
    
    
    def __init__(self, user_h):
        self.user_h = user_h - ROBOT_HEIGHT
        # self.edge_percentage = (self.cam_h - user_h) * self.center_dist / (2 * self.cam_h)
        self.real_ratio = (self.cam_h - self.user_h) / self.cam_h
        self.cam = Vision(1)
        self.cam.start_stream()
        self.bot_pos = np.array([0.0, 0.0], dtype=np.float32)  # TODO: Change this to read the position from the camera
        self.max_edge_cords = self.angle_2_cords(np.array([30, 30], dtype=np.float32))[0:2]
        self.max_edge_length = mag(self.max_edge_cords) * self.edge_percentage
        print(self.max_edge_length)     
           
    def get_dodgebot_camera_location(self):
        bot_pix_loc = self.cam.find_bot()
        # if bot_pix_loc != :
        if bot_pix_loc.size != 0:
            bot_pix_loc = np.mean(bot_pix_loc, axis=0)
            # print("*",bot_pix_loc)
            bot_offset_pix = bot_pix_loc - self.px_cent
            # print("**", bot_offset_pix)
            # print("***", self.radius_pixel)
            # Z_pix = np.sqrt(self.radius_pixel**2 - (bot_offset_pix[0]**2 + bot_offset_pix[1]**2))
            # print("zpix ", Z_pix)
            # Z_ratio = (Z_pix / self.radius_pixel)
            # Z_simulated = Z_ratio * self.radius
            z_height_simulated = ((np.sqrt(self.radius_pixel**2 - (bot_offset_pix[0]**2 + bot_offset_pix[1]**2))) / self.radius_pixel) * self.radius
            # print("****", z_height_simulated)
            return self.bot_pixel_2_crods(bot_pix_loc, z_height_simulated)
        else:
            return bot_pix_loc
        
    
    def center_bot(self):
        # print(self.bot_pos)
        if (abs(self.bot_pos[0]) <= .01 and abs(self.bot_pos[1]) <= .01):
            return np.array([0,0], dtype=np.float32), np.array([0,0], dtype=np.float32)
        else:
            print(f"Bot is being centered {-self.bot_pos}")
            # print(f"{self.bot_center_pos_angle} - {self.cords_2_angle(self.bot_pos)}")
            # temp = self.bot_center_pos_angle - self.cords_2_angle(self.bot_pos)
            ############################################################
            # self.bot_pos[0] = 0.0
            # self.bot_pos[1] = 0.0
            return np.round(self.bot_center_pos_angle - self.cords_2_angle(self.bot_pos)), -self.bot_pos
    
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
    
    def bot_pixel_2_crods(self, pixel, z_height):
        pixel_loc = np.array([pixel[1], pixel[0]]) if len(pixel.shape) == 1 else Swap(pixel, 0, 1)
        bot_real_ratio = (self.cam_h - z_height) / self.cam_h
        real_dist_cords = bot_real_ratio * self.center_dist * (pixel_loc - self.px_cent) / self.px_cent
        return (real_dist_cords * np.array([1, -1])).astype(np.float32)
    
    def kmeans_gpu(self, coords, n):
        cluster_lbl = None
        # if coords.size > 3:
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
                # print(self.cord_centers)
                self.kmeans_gpu(coords, 2)
                
            return self.cord_centers
        except IndexError:
            print("Error index")
            return self.cord_centers
        except ValueError:
            print("Error value")
            return self.cord_centers
        # else:
            # return False, torch.tensor([[float('nan'), -.5], [.5, .5]])

    def detect_punch(self):
        st = time.time()
        raw_glove_data, frame = self.cam.read_gloves()
        if raw_glove_data.size < 3:
            cv.circle(frame, tuple(self.cords_2_pixel(self.bot_pos)[::-1]), 25, (150, 150, 150), -1)
            self.cord_centers = torch.tensor([[float('nan'), -.5], [.5, .5]])
            return None, None
        
        marked_coords = self.pixel_2_cords(raw_glove_data)
        variation_marked_cords = np.var(marked_coords, axis=0)
        mean_marked_cords = np.mean(marked_coords, axis=0)
        #might have to change this value tommorrow
        ###test this tommorrow see if were able to track through space
        ## or maybe we automatically move to a backward position, telling the user we can not track anymore!!
        ## this is a dickhead thing but might be very effiective
        if np.any((variation_marked_cords < .0008)):
            # if np.any(np.isnan(self.buf[0][0])) or np.any(np.isnan(self.buf[0][1])) or np.any(np.isnan(self.buf[1][0])) or np.any(np.isnan(self.buf[1][1])):
            #     return None, None
            # #then the single punch marked cords are closes to the buf[0], not buf[1]
            # if mag(mean_marked_cords - self.buf[0][0]) < mag(mean_marked_cords - self.buf[1][0]):
            #     self.buf[0].appendleft(mean_marked_cords)
            #     self.buf[0].pop()
            #     self.buf[1].appendleft(self.buf[1][0])
            #     self.buf[1].pop()
            # else:
            #     self.buf[1].appendleft(mean_marked_cords)
            #     self.buf[1].pop()
            #     self.buf[0].appendleft(self.buf[0][0])
            #     self.buf[0].pop()
                
            return None, None
        # else:
        test_cord_centers = self.kmeans_gpu(marked_coords, 2)
        
        self.buf[0].appendleft(test_cord_centers[0].numpy())
        self.buf[0].pop()
        self.buf[1].appendleft(test_cord_centers[1].numpy())
        self.buf[1].pop()
        self.run_time_dict["Kmeans"].append(time.time() - st)
        
        # if self.identified_gloves_bool == False:
        #     #######################
        #     # cv.circle(frame, tuple(self.cords_2_pixel(self.bot_pos)[::-1]), 25, (0, 0, 0), -1)
        #     cv.circle(frame, tuple(self.cords_2_pixel(self.bot_pos)[::-1]), 25, (150, 150, 150), -1)
        #     # print("!!!!!!!!!!!!!!Len < 2!!!!!!!!!!!!!!!!!")
        #     ######################
        #     self.cord_centers = torch.tensor([[float('nan'), -.5], [.5, .5]])
        #     return self.center_bot()
        
        # if test_cord_centers.isnan().any():
        #     return None, None
            
        # self.buf[0].appendleft(test_cord_centers[0].numpy())
        # self.buf[0].pop()
        # self.buf[1].appendleft(test_cord_centers[1].numpy())
        # self.buf[1].pop()
        # print(self.buf)
        # print(self.buf)
        if np.any(np.isnan(self.buf[0][0])) or np.any(np.isnan(self.buf[0][1])) or np.any(np.isnan(self.buf[1][0])) or np.any(np.isnan(self.buf[1][1])):
            return None, None
        
        self.run_time_dict["Buffer"].append(time.time() - st)
        
        close, far = (0, 1) if mag(self.buf[0][0] - self.bot_pos) < mag(self.buf[1][0] - self.bot_pos) else (1, 0)
       
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
        # print(f"mag {punch_mag}")
        if punch_mag < .03:
            if time.time() - self.dodge_time >= self.reset_time_sec:
                #######################
                # cv.circle(frame, tuple(self.cords_2_pixel(self.bot_pos)[::-1]), 25, (0, 0, 0), -1)
                ######################
                return self.center_bot()
            else:
                #######################
                # cv.circle(frame, tuple(self.cords_2_pixel(self.bot_pos)[::-1]), 25, (100, 100, 100), -1)
                return None, None
                ######################
            # return self.center_bot()
            
        self.dodge_time = time.time()
        m = punch_diff[Y] / punch_diff[X]
        
        y_offset = punch_pos[Y] - m * punch_pos[X]
        clearance = np.abs((m*self.bot_pos[0] + y_offset) - self.bot_pos[1])
        if clearance > self.min_clearance:
            #######################
            # cv.circle(frame, tuple(self.cords_2_pixel(self.bot_pos)[::-1]), 25, (0, 0, 0), -1)
            ######################
            return None, None
        
        self.run_time_dict["Slope"].append(time.time()-st)
        perp_left = np.array([punch_hat[Y], -punch_hat[X]])
        perp_right = np.array([-punch_hat[Y], punch_hat[X]])
        # print("perp left, right", perp_left, perp_right)
        
        if mag(self.bot_pos) < self.max_edge_length:
            print("Center Dodge")
            player_pos_v = ((punch_pos + self.buf[far][0]) / 2) - self.bot_pos
            player_pos_v_hat = player_pos_v / mag(player_pos_v)
            perp = perp_left if mag(perp_left - player_pos_v_hat) >= mag(perp_right - player_pos_v_hat) else perp_right
            # perp = self.x_coeff*perp[0] + self.y_coeff*perp[1]
            dodge = np.abs(self.min_clearance - clearance) * perp + self.min_clearance * perp
            
        else:
            print("Edge Dodge")
            perp = perp_left if mag(perp_left + self.bot_pos) < mag(perp_right + self.bot_pos) else perp_right
            unit_dodge = .5*(-self.bot_pos / mag(self.bot_pos)) + .5*(perp)
            # unit_dodge = self.x_coeff*unit_dodge[0] + self.y_coeff*unit_dodge[1]
            dodge = np.abs(self.min_clearance - clearance) * unit_dodge + 1.5 * self.min_clearance * unit_dodge
            # print("bot pos", self.bot_pos, "unit doge", unit_dodge, "perp", perp)
        self.run_time_dict["Avoidance"].append(time.time()-st)
        bot_prev_pos_angle = self.cords_2_angle(self.bot_pos)
        ##################
        # cv.circle(frame, tuple(self.cords_2_pixel(self.bot_pos)[::-1]), 25, (255, 255, 0), -1)
        ##################
        # print("prev pos", self.bot_pos, "dodge", dodge)
        new_bot_pos = self.bot_pos + dodge
        # self.bot_pos = self.bot_pos + dodge
        ##################
        # cv.circle(frame, tuple(self.cords_2_pixel(new_bot_pos)[::-1]), 25, (255, 255, 255), -1)
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
        print("Kmeans: ", self.run_time_dict["Kmeans"][-1], self.run_time_dict["Main Punch"][-1], self.run_time_dict["Slope"][-1], self.run_time_dict["Avoidance"][-1], self.run_time_dict["Total End"][-1])
        print(f"bot_pos: {self.bot_pos} ({bot_prev_pos_angle}), new_bot_pos {new_bot_pos} ({self.cords_2_angle(new_bot_pos)}), dodge {dodge}, buff {self.buf}, punch mag {punch_mag}, punch hat{punch_hat}, m {m}, cord_centers {self.cord_centers}, punch var {variation_marked_cords}")
        # return np.round(self.cords_2_angle(new_bot_pos) - bot_prev_pos_angle, ENCODER_SCALER/10), np.round(dodge, 5)
        return np.round(self.cords_2_angle(new_bot_pos) - bot_prev_pos_angle), np.round(dodge, 5)
