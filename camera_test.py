import numpy as np
import cv2 as cv
import time

def change_res(width, height):
    cap.set(3, width)
    cap.set(4, height)

st = time.time()

cap = cv.VideoCapture(1)
if not cap.isOpened():
    print("Cannot open camera")
    exit()
i = 0

# change_res(1920, 1080)
cap.set(cv.CAP_PROP_FRAME_WIDTH, 640)
cap.set(cv.CAP_PROP_FRAME_HEIGHT, 360)
cap.set(cv.CAP_PROP_FPS, 30)
cap.set(cv.CAP_PROP_FRAME_COUNT, 260)
print(cap.get(cv.CAP_PROP_FPS))
print(cap.get(cv.CAP_PROP_FRAME_COUNT))

# while cap.isOpened():
while True:
    # Capture frame-by-frame
    ret, frame = cap.read()

    # if frame is read correctly ret is True
    if not ret:
        print("Can't receive frame (stream end?). Exiting ...")
        break

    # Display the resulting frame
    # cv.imshow('frame', frame)
    # print(frame.shape)
    print(cv.waitKey(0))
    if cv.waitKey(1) == ord('q'):
        break

    i+=1
    if(i>260):
        break

# When everything done, release the capture
et = time.time() - st
print(et)
print(i/et)
cap.release()
cv.destroyAllWindows()