import time
import cv2 as cv
import numpy as np
import torch
from kmeans_pytorch import kmeans, kmeans_predict
import skimage
import sys


def change_res(width, height):
    cap.set(3, width)
    cap.set(4, height)


def img_2_vector(img, color='color'):
    img_shape = img.shape
    rows = img_shape[0]
    cols = img_shape[1]
    if (len(img_shape) != 0):
        vector = img.reshape([rows * cols, len(img_shape)])
    else:
        vector = img.reshape([rows * cols, 1])

    return vector, [rows, cols]


def vector_2_image(vector, img_shape, num_colors):
    return vector.reshape([img_shape[0], img_shape[1], num_colors])


def frame_resize(frame):
    shape = frame.shape
    low_col = int((shape[1] / 2) - (shape[0] / 2))

    high_col = int((shape[1] / 2) + (shape[0] / 2))
    # print(low_col, ",", high_col)
    return frame[:, low_col:high_col, :]


def calibration_circle(frame):
    cv.circle(frame, (int(frame.shape[0] / 2), int(frame.shape[1] / 2)), 1, (0, 255, 0), cv.FILLED)
    cv.circle(frame, (int(5), int(5)), 1, (255, 0, 0), cv.FILLED)
    cv.circle(frame, (int(5), int(350)), 1, (0, 0, 255), cv.FILLED)
    cv.circle(frame, (int(350), int(5)), 1, (0, 255, 255), cv.FILLED)
    return frame


def pixel_2_cords(pixel_location, pixel_center_location, center_dist, camera_height, height, orientation):
    real_ratio = height / camera_height
    dist = real_ratio * center_dist
    pixel_xy = pixel_center_location - pixel_location
    pixel_xy_ratio = pixel_xy / pixel_center_location
    real_dist_cords = pixel_xy_ratio * dist
    return orientation * real_dist_cords


def cords_2_pixel(real_dist_cords, pixel_center_location, center_dist, camera_height, height, inv_camera_orientation):
    real_ratio = height / camera_height
    dist = real_ratio * center_dist
    orientated_cords = real_dist_cords * inv_camera_orientation
    pixel_xy_ratio = orientated_cords / dist
    pixel_xy = pixel_xy_ratio * pixel_center_location
    pixel_location = pixel_center_location - pixel_xy
    return pixel_location.astype('uint16')


def kmeans_gpu(identified_punch_cords, num_gloves, prev_cluster_centers, center_dist_threshold=-1):
    if identified_punch_cords.size > 0:
        identified_punch_cords_torch = torch.from_numpy(identified_punch_cords)
        try:
            if prev_cluster_centers.isnan().any() == True:
                cluster_labels, punch_centers = kmeans(X=identified_punch_cords_torch, num_clusters=num_gloves,device='cuda:0')
            elif len(prev_cluster_centers.shape) == 2:
                # print(prev_cluster_centers)
                # print(prev_cluster_centers.shape)
                cluster_labels = kmeans_predict(identified_punch_cords_torch, prev_cluster_centers, device='cuda:0')
          
            punch1_pixel = identified_punch_cords[cluster_labels == 0]
            punch2_pixel = identified_punch_cords[cluster_labels == 1]
            punch_centers = torch.Tensor([np.mean(punch1_pixel, axis=0), np.mean(punch2_pixel, axis=0)])
            punch_pixels = [punch1_pixel, punch2_pixel]
            return punch_pixels, punch_centers
        except IndexError or ValueError as e:
            return [identified_punch_cords], prev_cluster_centers
        
    else:
        return [], torch.tensor([[float('nan'), -.5], [.5, .5]])


st = time.time()
cap = cv.VideoCapture(1, cv.CAP_DSHOW)

if not cap.isOpened():
    print("Cannot open camera")
    exit()

change_res(640, 360)
pixel_center = np.array([360 / 2, 360 / 2], dtype=int)
real_center_dist = 1.06
cam_height = 2
# Max - 1.35
# Ayman - 1.524
user_height = 1.35
camera_orientation = np.array([-1, 1])
buffer_size = 3
centroid_buffer1 = [np.zeros(2, dtype=float)] * buffer_size
centroid_buffer2 = [np.zeros(2, dtype=float)] * buffer_size
previous_robot_loc = np.array([0, 0])
previous_robot_loc_pixel = cords_2_pixel(previous_robot_loc, pixel_center, real_center_dist, cam_height, user_height,
                                         camera_orientation)
max_dodge_dist = .1
avoidance_dist = .2
cord_centers = torch.tensor([[-.5, -.5], [.5, .5]])
np.random.seed(42)

while cap.isOpened():
    ret, frame = cap.read()
    frame = frame_resize(frame)
    st = time.time()
    if not ret:
        print("Can't receive frame (stream end?). Exiting ...")
        break
    # Convert the frame to the HSV color space (better for color tracking)
    
    # Calculate the centroid (average position) of red pixels
    # if marked_pixel_coords.size > 0:
    # centroid = np.mean(marked_pixel_coords, axis=0, dtype=int)
    # print(pixel_2_cords(pixel_center, centroid, real_center_dist, cam_height, user_height, camera_orentation))
    # calibration circle
    frame = calibration_circle(frame)
    # bgr_binary_frame = cv.cvtColor(binary_frame, cv.COLOR_HSV2BGR)
    
    cv.imshow('Original Frame', frame)
    if cv.waitKey(1) == ord('q'):
        break
cap.release()
cv.destroyAllWindows()

