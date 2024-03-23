import threading

import cv2 as cv
import numpy as np


def frame_resize(frame):
    shape = frame.shape
    low_col = int((shape[1] / 2) - (shape[0] / 2))
    high_col = int((shape[1] / 2) + (shape[0] / 2))
    return frame[:, low_col:high_col, :]


class Stream:
    def __init__(self, src=0):
        self.stream = cv.VideoCapture(src, cv.CAP_DSHOW)
        self.grabbed, self.frame = self.stream.read()
        self.lower_bound_gloves = np.array([20, 100, 100])
        self.upper_bound_gloves = np.array([30, 255, 255])
        self.map_x = np.load("mapx.npy")
        self.map_y = np.load("mapy.npy")
        self.stopped = False

    def start(self):
        # start the thread to read frames from the video stream
        threading.Thread(target=self.update, args=()).start()
        return self

    def update(self):
        while True:
            if self.stopped:
                self.stream.release()
                return
            else:
                (self.grabbed, self.frame) = self.stream.read()

    def read(self):
        temp = cv.remap(self.frame, self.map_x, self.map_y, cv.INTER_LINEAR)
        temp = frame_resize(temp)
        return temp

    def punch_pixels(self):
        frame = self.read()
        hsv_frame = cv.cvtColor(frame, cv.COLOR_BGR2HSV)
        color_mask_gloves = cv.inRange(hsv_frame, self.lower_bound_gloves, self.upper_bound_gloves)
        return np.column_stack(np.where(color_mask_gloves > 0)), frame

    def stop(self):
        self.stopped = True
