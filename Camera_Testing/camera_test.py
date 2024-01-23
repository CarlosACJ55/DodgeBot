import numpy as np
import cv2 as cv
import time
from sklearn.cluster import KMeans

#TODO FIX FRAMERATE CALCULATIONS
# ALSO FIX COLOR TRACKING SO THAT IT TRACKS BASED OFF MAGNITUDE AND NOT LIMITS ON RBG (SEE YUSUF FOR MORE DETAILS)
# def Enviorment_Tracking(video_steam_mem_location):
    
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

def img_2_vector(img, color='color'):
    img_shape = img.shape
    rows = img_shape[0]
    cols = img_shape[1]
    if(len(img_shape) != 0):
        vector = img.reshape([rows*cols, len(img_shape)])
    else:
        vector = img.reshape([rows*cols, 1])
    
    return vector, [rows, cols]

def vector_2_image(vector, img_shape, num_colors):
    return vector.reshape([img_shape[0], img_shape[1], num_colors])

def frame_resize(frame):
    shape = frame.shape
    low_col = int((shape[1] / 2) - (shape[0]/2))

    high_col = int((shape[1] / 2) + (shape[0]/2))
    # print(low_col, ",", high_col)
    return frame[:,low_col:high_col,:]
   
def calibration_circle(frame):
    cv.circle(frame, (int(frame.shape[0]/2), int(frame.shape[1]/2)),1, (0, 255, 0), cv.FILLED)
    cv.circle(frame, (int(5), int(5)),1, (255, 0, 0), cv.FILLED)
    cv.circle(frame, (int(5), int(350)),1, (0, 0, 255), cv.FILLED)
    cv.circle(frame, (int(350), int(5)),1, (0, 255, 255), cv.FILLED)
    return frame

def pixel_2_cords(pixel_center_location, pixel_location, center_dist, camera_height, user_height, camera_orentation):
    real_ratio = user_height/camera_height
    real_center_dist = real_ratio*center_dist

    pixel_xy = pixel_center_location - pixel_location
    pixel_xy_ratio = pixel_xy / pixel_center_location
    real_dist_cords = pixel_xy_ratio*real_center_dist
    return camera_orentation*real_dist_cords

i = 0
change_res(640, 360)

def camera_calibration(frame, pixel_center, real_center_dist, user_height, camera_height):
    real_dist_ratio = user_height/camera_height
    real_dist = real_center_dist * real_dist_ratio
    
pixel_center = np.array([360/2, 360/2])
real_center_dist = 1.06
cam_height = 2
user_height = 1.35
camera_orentation = np.array([-1,1])

while cap.isOpened():
    ret, frame = cap.read()
    frame = frame_resize(frame)

    if not ret:
        print("Can't receive frame (stream end?). Exiting ...")
        break

    # Convert the frame to the HSV color space (better for color tracking)
    hsv_frame = cv.cvtColor(frame, cv.COLOR_BGR2HSV)

    # Define a range of colors similar to the target color in HSV
    #define the color
    # print(target_color[2] - 10)

    lower_bound_gloves = np.array([0, 100, 100])
    upper_bound_gloves = np.array([15, 255,255])
    lower_bound_bot = np.array([130, 100, 100])
    upper_bound_bot = np.array([160, 255,255])
    #for yellow target
    lower_bound_gloves = np.array([20, 100, 100])
    upper_bound_gloves = np.array([30, 255,255])

    # lower_bound_bot = np.array([130, 100, 100])
    # upper_bound_bot = np.array([160, 255,255])
    # Create a binary mask for the specified color
    color_mask_gloves = cv.inRange(hsv_frame, lower_bound_gloves, upper_bound_gloves) 
    color_mask_bot = cv.inRange(hsv_frame, lower_bound_bot, upper_bound_bot)

    # color_mask_bot = cv.inRange(hsv_frame, lower_bound_bot, upper_bound_bot)
    # color_mask = color_mask / 255
    result = cv.bitwise_and(frame, frame, mask=color_mask_gloves)
    results = cv.bitwise_and(frame)

    # rgb_frame = cv.cvtColor(frame, cv.COLOR_BGR2RGB)

    # frame_shape = rgb_frame.shape
    # vectorized = rgb_frame.reshape((-1,3))

    # results = cv.bitwise_and(frame)

    # color_mask_3d = np.stack((color_mask,) * 3, axis=-1)

    # Find the coordinates of all marked color pixels in the mask
    #finds all the pixels where the condition is true
    #the returns a list of cordinates where its true
    marked_pixel_coords = np.column_stack(np.where(color_mask_gloves > 0))
    
    # cv.imshow('frame', marked_pixel_coords)
    # binary_frame = color_mask_3d * frame
    # binary_frame = np.logical_and(hsv_frame, color_mask_3d)
    # print(binary_frame.shape)

    # Calculate the centroid (average position) of red pixels
    if marked_pixel_coords.size > 0:
        centroid = np.mean(marked_pixel_coords, axis=0, dtype=int)
        print(pixel_2_cords(pixel_center, centroid, real_center_dist, cam_height, user_height, camera_orentation))

    #     # Draw a circle at the centroid
    #     cv.circle(frame, tuple(centroid[::-1]), 5, (0, 255, 0), -1)
        cv.circle(frame, tuple(centroid[::-1]), 5, (0, 255, 0), -1)

    # Calculate the frame rate TODO FIX THIS
    # et = time.time() - st
    # fps = i / et

    # Draw FPS information on the frame
    # cv.putText(frame, f'FPS: {fps:.2f}', (10, 30), cv.FONT_HERSHEY_SIMPLEX, 1, (0, 255, 0), 2)

    # Display the original frame
    # print(binary_frame)
    #calibration circle
    frame = calibration_circle(frame)
    

    # bgr_binary_frame = cv.cvtColor(binary_frame, cv.COLOR_HSV2BGR)

    cv.imshow('Original Frame', frame)

    if cv.waitKey(1) == ord('q'):
        break

    i += 1

# Release the capture and close OpenCV windows
cap.release()
cv.destroyAllWindows()
