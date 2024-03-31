import time
from collections import deque

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


class Sentry:
    cam = Vision(1)
    buf = deque([(np.zeros(2, dtype=float), np.zeros(2, dtype=float)) for _ in range(2)])
    px_cent = np.array([360 / 2, 360 / 2], dtype=int)
    center_dist = 1.14
    cam_h = 2.36855
    min_clearance = .15
    cord_centers = torch.tensor([[-.5, -.5], [.5, .5]])
    dodge_time = 0

    def __init__(self, user_h):
        self.user_h = user_h
        self.edge_percentage = (self.cam_h - user_h) * self.center_dist / (2 * self.cam_h)
        self.real_ratio = (self.cam_h - self.user_h) / self.cam_h
        self.cam.start_stream()
        self.bot_pos = np.array([0, 0])  # TODO: Change this to read the position from the camera

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
                punch_centers = torch.Tensor([np.mean(punch1_pixel, axis=0), np.mean(punch2_pixel, axis=0)])
                punch_pixels = [punch1_pixel, punch2_pixel]
                return punch_pixels, punch_centers
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
        if len(cord_list) != 2:
            self.cord_centers = torch.tensor([[float('nan'), -.5], [.5, .5]])
            self.bot_pos = np.array([0, 0])
            return tuple(self.bot_pos)
        self.buf.appendleft((cord_centers[0].numpy(), cord_centers[1].numpy()))
        self.buf.pop()
        close, far = (0, 1) if mag(self.buf[0][0] - self.bot_pos) > mag(self.buf[1][0] - self.bot_pos) else (1, 0)
        punch_pos = self.buf[0][close]
        punch_del = punch_pos - self.buf[1][close]
        punch_mag = mag(punch_del)
        punch_dir = punch_del / punch_mag
        if punch_mag < .04:
            return tuple(self.cords_2_pixel(self.bot_pos)[::-1]) if time.time() - self.dodge_time < 1 else None
        self.dodge_time = time.time()
        m = punch_del[Y] / punch_del[X]
        clearance = np.abs(m * (self.bot_pos[X] - punch_pos[X]) + punch_pos[Y] - self.bot_pos[1])
        if clearance >= self.min_clearance:
            return None
        perp_left = np.array([punch_dir[Y], -punch_dir[X]])
        perp_right = np.array([-punch_dir[Y], punch_dir[X]])
        if mag(self.bot_pos) < self.edge_percentage:
            player_del = (punch_pos + self.buf[0][far]) / 2 - self.bot_pos
            player_dir = player_del / mag(player_del)
            perp = perp_left if mag(perp_left - player_dir) >= mag(perp_right - player_dir) else perp_right
            dodge = np.abs(self.min_clearance - clearance) * perp + self.min_clearance * perp
        else:
            perp = perp_left if mag(perp_left + self.bot_pos) < mag(perp_right + self.bot_pos) else perp_right
            unit_dodge = (np.array([perp[X], perp[Y]]) - self.bot_pos / mag(self.bot_pos)) / 2
            dodge = np.abs(self.min_clearance - clearance) * unit_dodge + 1.5 * self.min_clearance * unit_dodge
        return self.bot_pos + dodge
