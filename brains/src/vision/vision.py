import threading
from os import path

import cv2 as cv
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
    lower_bound_gloves = np.array([20, 150, 150])
    upper_bound_gloves = np.array([30, 255, 255])
    lower_bound_bot = np.array([0, 150, 150])
    upper_bound_bot = np.array([10, 255, 255])
    continue_streaming = False

    def __init__(self, src=0):
        self.stream = cv.VideoCapture(src, cv.CAP_DSHOW)
        self.grabbed, self.frame = self.stream.read()

    def start_stream(self):
        threading.Thread(target=self.stream_data, args=()).start()
        return self

    def stop_stream(self):
        self.continue_streaming = False

    def stream_data(self):
        self.continue_streaming = True
        while self.continue_streaming:
            self.grabbed, temp_frame = self.stream.read()
            self.frame = frame_resize(cv.remap(temp_frame, self.map_x, self.map_y, cv.INTER_LINEAR))
        self.stream.release()
        print("stream realase")
        # cv.destroyAllWindows()
        
    def read_gloves(self):
        # frame = frame_resize(cv.remap(self.frame, self.map_x, self.map_y, cv.INTER_LINEAR))
        tframe = self.frame
        hsv_frame = cv.cvtColor(self.frame, cv.COLOR_BGR2HSV)
        color_mask_gloves = cv.inRange(hsv_frame, self.lower_bound_gloves, self.upper_bound_gloves)
        return np.column_stack(np.where(color_mask_gloves > 0)), tframe
