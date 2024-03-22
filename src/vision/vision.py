import cv2 as cv
import numpy as np
import torch
from kmeans_pytorch import kmeans, kmeans_predict


class Vision:
    def __init__(self, camera_id=0, resolution=(640, 360)):
        self.camera_id = camera_id
        self.resolution = resolution
        self.pixel_center = np.array([resolution[1] / 2, resolution[1] / 2], dtype=int)
        self.real_center_dist = 1.14
        self.cam_height = 2.36855
        self.user_height = 1.35
        self.camera_orientation = np.array([-1, 1])
        self.buffer_size = 3
        self.centroid_buffer1 = [np.zeros(2, dtype=float)] * self.buffer_size
        self.centroid_buffer2 = [np.zeros(2, dtype=float)] * self.buffer_size
        self.previous_robot_loc = np.array([0, 0])
        self.max_dodge_dist = 0.1
        self.avoidance_dist = 0.2
        self.cord_centers = torch.tensor([[-0.5, -0.5], [0.5, 0.5]])
        self.camera_matrix = np.array(
                [[354.71698103, 0.0, 325.02163159], [0.0, 355.44339145, 161.51298043], [0.0, 0.0, 1.0]])
        self.distortion_coeff = np.array(
                [[-3.52228685e-01, 1.55541160e-01, 4.99708023e-05, -4.91499027e-05, -3.67726346e-02]])
        self.capture = cv.VideoCapture(self.camera_id, cv.CAP_DSHOW)
        if not self.capture.isOpened():
            raise RuntimeError("Failed to open vision")
        self.set_resolution(self.resolution)

    def set_resolution(self, resolution):
        self.resolution = resolution
        self.capture.set(3, resolution[0])
        self.capture.set(4, resolution[1])
        self.pixel_center = np.array([resolution[1] / 2, resolution[1] / 2], dtype=int)

    def resize_frame(self, frame):
        shape = frame.shape
        low_col = int((shape[1] / 2) - (shape[0] / 2))
        high_col = int((shape[1] / 2) + (shape[0] / 2))
        return frame[:, low_col:high_col, :]

    def read_frame(self):
        ret, frame = self.capture.read()
        if not ret:
            raise RuntimeError("Failed to read frame from camera")
        return frame

    def release(self):
        self.capture.release()

    def undistort_frame(self, frame):
        return cv.undistort(frame, self.camera_matrix, self.distortion_coeff, None, self.camera_matrix)

    def pixel_2_cords(self, pixel_location):
        real_ratio = self.user_height / self.cam_height
        dist = real_ratio * self.real_center_dist
        pixel_xy = self.pixel_center - pixel_location
        pixel_xy_ratio = pixel_xy / self.pixel_center
        real_dist_cords = pixel_xy_ratio * dist
        return self.camera_orientation * real_dist_cords

    def cords_2_pixel(self, real_dist_cords):
        real_ratio = self.user_height / self.cam_height
        dist = real_ratio * self.real_center_dist
        orientated_cords = real_dist_cords * self.camera_orientation
        pixel_xy_ratio = orientated_cords / dist
        pixel_xy = pixel_xy_ratio * self.pixel_center
        return pixel_xy.astype('uint16')

    def kmeans_gpu(self, identified_punch_cords, num_gloves):
        if identified_punch_cords.size > 0:
            identified_punch_cords_torch = torch.from_numpy(identified_punch_cords)
            try:
                if np.isnan(self.cord_centers).any():
                    cluster_labels, punch_centers = kmeans(X=identified_punch_cords_torch, num_clusters=num_gloves,
                                                           device='cuda:0')
                elif len(self.cord_centers.shape) == 2:
                    cluster_labels = kmeans_predict(identified_punch_cords_torch, self.cord_centers, device='cuda:0')
                punch1_pixel = identified_punch_cords[cluster_labels == 0]
                punch2_pixel = identified_punch_cords[cluster_labels == 1]
                punch_centers = torch.Tensor([np.mean(punch1_pixel, axis=0), np.mean(punch2_pixel, axis=0)])
                punch_pixels = [punch1_pixel, punch2_pixel]
                return punch_pixels, punch_centers
            except (IndexError, ValueError):
                return [identified_punch_cords], self.cord_centers
        else:
            return [], torch.tensor([[float('nan'), -0.5], [0.5, 0.5]])
