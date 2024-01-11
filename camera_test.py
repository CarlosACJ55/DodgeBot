import numpy as np
import cv2 as cv
import time

#TODO FIX FRAMERATE CALCULATIONS
# ALSO FIX COLOR TRACKING SO THAT IT TRACKS BASED OFF MAGNITUDE AND NOT LIMITS ON RBG (SEE YUSUF FOR MORE DETAILS)

def change_res(width, height):
    cap.set(3, width)
    cap.set(4, height)

# Define the BGR color to track (for example, red)
target_color = (255, 0, 0)

st = time.time()

cap = cv.VideoCapture(1,cv.CAP_DSHOW)

if not cap.isOpened():
    print("Cannot open camera")
    exit()

# Add a delay before starting the loop
time.sleep(1)

i = 0
change_res(640, 360)

while cap.isOpened():
    ret, frame = cap.read()

    if not ret:
        print("Can't receive frame (stream end?). Exiting ...")
        break

    # Convert the frame to the HSV color space (better for color tracking)
    hsv_frame = cv.cvtColor(frame, cv.COLOR_BGR2HSV)

    # Define a range of colors similar to the target color in HSV
    #define the color
    # print(target_color[2] - 10)

    lower_bound = np.array([15, 100, 100])
    upper_bound = np.array([30, 255,255])

    # Create a binary mask for the specified color
    color_mask = cv.inRange(hsv_frame, lower_bound, upper_bound)

    # Find the coordinates of all red pixels in the mask
    red_pixel_coords = np.column_stack(np.where(color_mask > 0))

    # Calculate the centroid (average position) of red pixels
    if red_pixel_coords.size > 0:
        centroid = np.mean(red_pixel_coords, axis=0, dtype=int)

        # Draw a circle at the centroid
        cv.circle(frame, tuple(centroid[::-1]), 5, (0, 255, 0), -1)

    # Calculate the frame rate TODO FIX THIS
    # et = time.time() - st
    # fps = i / et

    # Draw FPS information on the frame
    # cv.putText(frame, f'FPS: {fps:.2f}', (10, 30), cv.FONT_HERSHEY_SIMPLEX, 1, (0, 255, 0), 2)

    # Display the original frame
    cv.imshow('Original Frame', frame)

    if cv.waitKey(1) == ord('q'):
        break

    i += 1

# Release the capture and close OpenCV windows
cap.release()
cv.destroyAllWindows()
