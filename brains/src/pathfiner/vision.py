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
    # lower_bound_gloves = np.array([25, 150, 150])
    # upper_bound_gloves = np.array([30, 255, 255])
    ## will need to check
    lower_bound_gloves = np.array([17, 110, 110])
    upper_bound_gloves = np.array([25, 255, 255])
    lower_bound_bot = np.array([0, 130, 130])
    upper_bound_bot = np.array([10, 255, 255])
    continue_streaming = False
    
    def __init__(self, src=1):
        self.stream = cv.VideoCapture(src, cv.CAP_DSHOW)
        self.frame = np.zeros([360,360,3],dtype=np.float32)
        self.grabbed = False
        # self.grabbed, self.frame = self.stream.read()

    def start_stream(self):
        threading.Thread(target=self.stream_data, args=()).start()
        return self

    def stop_stream(self):
        self.continue_streaming = False
        self.stream.release()
        cv.destroyAllWindows()
        print("Steam Realsed")

    def stream_data(self):
        self.continue_streaming = True
        while self.continue_streaming:
            self.grabbed, temp_frame = self.stream.read()
            if self.grabbed:
                self.frame = frame_resize(cv.remap(temp_frame, self.map_x, self.map_y, cv.INTER_LINEAR))
            else:
                print("Frame Not Grabbed", self.stream.isOpened())
        
    def find_bot(self):
        hsv_frame2 = cv.cvtColor(self.frame, cv.COLOR_BGR2HSV)
        color_mask_bot = cv.inRange(hsv_frame2, self.lower_bound_bot, self.upper_bound_bot)
        #check that color mask is working
        return np.column_stack(np.where(color_mask_bot > 0))
    
    def read_gloves(self):
        # frame = frame_resize(cv.remap(self.frame, self.map_x, self.map_y, cv.INTER_LINEAR))
        tframe = self.frame
        hsv_frame = cv.cvtColor(self.frame, cv.COLOR_BGR2HSV)
        color_mask_gloves = cv.inRange(hsv_frame, self.lower_bound_gloves, self.upper_bound_gloves)
        return np.column_stack(np.where(color_mask_gloves > 0)), tframe
