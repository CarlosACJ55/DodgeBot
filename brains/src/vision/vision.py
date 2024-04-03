import threading
from os import path

import cv2
import numpy as np


def frame_resize(frame):
    shape = frame.shape
    low_col = int((shape[1] / 2) - (shape[0] / 2))
    high_col = int((shape[1] / 2) + (shape[0] / 2))
    return frame[:, low_col:high_col, :]


class Vision:
    calibration_dir = path.join(path.dirname(__file__), 'calibration')
    map_x = np.load(path.join(calibration_dir, 'x.npy'))
    map_y = np.load(path.join(calibration_dir, 'y.npy'))
    lower_bound_gloves = np.array([20, 100, 100])
    upper_bound_gloves = np.array([30, 255, 255])
    continue_streaming = False

    def __init__(self, src=0):
        self.stream = cv2.VideoCapture(src, cv2.CAP_DSHOW)
        self.grabbed, self.frame = self.stream.read()

    def start_stream(self):
        threading.Thread(target=self.stream_data, args=()).start()
        return self

    def stop_stream(self):
        self.continue_streaming = False

    def stream_data(self):
        self.continue_streaming = True
        while self.continue_streaming:
            self.grabbed, self.frame = self.stream.read()
        self.stream.release()

    def read_gloves(self):
        frame = frame_resize(cv2.remap(self.frame, self.map_x, self.map_y, cv2.INTER_LINEAR))
        hsv_frame = cv2.cvtColor(frame, cv2.COLOR_BGR2HSV)
        color_mask_gloves = cv2.inRange(hsv_frame, self.lower_bound_gloves, self.upper_bound_gloves)
        return np.column_stack(np.where(color_mask_gloves > 0)), frame