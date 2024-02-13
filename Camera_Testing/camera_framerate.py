import threading 
from threading import Thread
import cv2 as cv
import time
import argparse
import imutils
import datetime
import numpy as np
import sys

# st = time.time()
# # cap = cv.VideoCapture(1, cv.CAP_DSHOW)
# class FPS:
# 	def __init__(self):
# 		# store the start time, end time, and total number of frames
# 		# that were examined between the start and end intervals
# 		self._start = None
# 		self._end = None
# 		self._numFrames = 0
# 	def start(self):
# 		# start the timer
# 		self._start = datetime.datetime.now()
# 		return self
# 	def stop(self):
# 		# stop the timer
# 		self._end = datetime.datetime.now()
# 	def update(self):
# 		# increment the total number of frames examined during the
# 		# start and end intervals
# 		self._numFrames += 1
# 	def elapsed(self):
# 		# return the total number of seconds between the start and
# 		# end interval
# 		return (self._end - self._start).total_seconds()
# 	def fps(self):
# 		# compute the (approximate) frames per second
# 		return self._numFrames / self.elapsed()

def frame_resize(frame):
    shape = frame.shape
    low_col = int((shape[1] / 2) - (shape[0] / 2))

    high_col = int((shape[1] / 2) + (shape[0] / 2))
    # print(low_col, ",", high_col)
    return frame[:, low_col:high_col, :]

class WebcamVideoStream:
	def __init__(self, src=0):
		# initialize the video camera stream and read the first frame
		# from the stream
		print(src)
		self.stream = cv.VideoCapture(src, cv.CAP_DSHOW)
		(self.grabbed, self.frame) = self.stream.read()
		# initialize the variable used to indicate if the thread should
		# be stopped
		self.lower_bound_gloves = np.array([0, 100, 100])
		self.upper_bound_gloves = np.array([15, 255, 255])
		self.stopped = False
	def start(self):
		# start the thread to read frames from the video stream
		Thread(target=self.update, args=()).start()
		return self
	def update(self):
		# keep looping infinitely until the thread is stopped
		while True:
			# if the thread indicator variable is set, stop the thread
			if self.stopped:
				self.stream.release()
				return
			else:
				(self.grabbed, self.frame) = self.stream.read()
			# otherwise, read the next frame from the stream
			# (self.grabbed, self.frame) = self.stream.read()
			
	def read(self):
		# return the frame most recently read
		temp = cv.remap(self.frame, mapx, mapy, cv.INTER_LINEAR)
		temp = frame_resize(temp)
		return temp
	
	def punch_pixels(self):
		frame = self.read()
		hsv_frame = cv.cvtColor(frame, cv.COLOR_BGR2HSV)
		color_mask_gloves = cv.inRange(hsv_frame, self.lower_bound_gloves, self.upper_bound_gloves)
		return np.column_stack(np.where(color_mask_gloves > 0))
	
	def stop(self):
		# indicate that the thread should be stopped
		self.stopped = True
		

cam = WebcamVideoStream(1)
cam.start()
i = 0
st = time.time()
mapx = np.load("mapx.npy")
mapy = np.load("mapy.npy")
while True:
	# frame = cam.read()
	print(cam.punch_pixels())
	# print(frame)
	# r_frame = frame_resize(frame)
	# print(r_frame.shape)
	# cv2.imshow("Frame", frame)
	i += 1
	if i > 1000:
		break
	# if cv2.waitKey(1) == ord('q'):
		# cam.stop()
		# break

print(i/(time.time()-st))

	
	

# construct the argument parse and parse the arguments
# ap = argparse.ArgumentParser()
# ap.add_argument("-n", "--num-frames", type=int, default=100,
# 	help="# of frames to loop over for FPS test")
# ap.add_argument("-d", "--display", type=int, default=-1,
# 	help="Whether or not frames should be displayed")
# args = vars(ap.parse_args())

# print("[INFO] sampling frames from webcam...")
# stream = cv2.VideoCapture(1,cv2.CAP_DSHOW)
# fps = FPS().start()
# # loop over some frames
# while fps._numFrames < args["num_frames"]:
# 	# grab the frame from the stream and resize it to have a maximum
# 	# width of 400 pixels
# 	(grabbed, frame) = stream.read()
# 	# frame = imutils.resize(frame, width=400)
# 	# check to see if the frame should be displayed to our screen
# 	if args["display"] > 0:
# 		cv2.imshow("Frame", frame)
# 		key = cv2.waitKey(1) & 0xFF
# 	# update the FPS counter
# 	fps.update()
# # stop the timer and display FPS information
# fps.stop()
# print("[INFO] elasped time: {:.2f}".format(fps.elapsed()))
# print("[INFO] approx. FPS: {:.2f}".format(fps.fps()))
# # do a bit of cleanup
# stream.release()
# cv2.destroyAllWindows()
# def read_frame(cap, frame):
# 	while cap.isOpened():
# 	    grabbed, temp = cap.read()
#         # if not grabbed:
#             # print("Can't receive frame (stream end?). Exiting ...")
#             # sys.exit(1)
#         frame[0] = temp.copy()
#     # cv2.imshow("Frame", temp)
#     # frame[0] = temp.copy()


#gotta thread with in the same class
# cap = cv2.VideoCapture(1, cv2.CAP_DSHOW)
# frame = [np.zeros((360,640,3))]
# i = 0
# frame_capture_thread = threading.Thread(target=read_frame, args=(cap, frame,))
# frame_capture_thread.start()
# st = time.time()
# while True:
# 	# time.sleep(.01)
# 	pic = frame[0]
# 	# print(pic.shape)
# 	cv2.imshow("Frame", pic)
# 	i += 1
# 	if i > 1000:
# 		break


# cap = cv2.VideoCapture(0, cv2.CAP_DSHOW)
# i = 0
# fps = FPS().start()
# st = time.time()
# while cap.isOpened():
    # (grabbed, frame) = cap.read()
	
    # cv2.imshow("Frame", frame)
	
    # cv2.imshow('Original Frame', frame)
	
    # i+=1
    # print(i)
    # if i > 100:
        # break

    # if cv2.waitKey(1) == ord('q'):
        # break
    
# print(i)
# print(i / (time.time()-st))
# cap.release()
# cv2.destroyAllWindows()

