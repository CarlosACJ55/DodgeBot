import time

import cv2 as cv
import numpy as np
# from sklearn.cluster import KMeans
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
        except IndexError:
            return [identified_punch_cords], prev_cluster_centers
        except ValueError:
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
real_center_dist = 1.14
cam_height = 2.36855
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
camera_matrix = np.array([[354.71698103,0.0,325.02163159],[0.0,355.44339145,161.51298043],[0.0,0.0,1.0]])
distortion_coeff = np.array([[-3.52228685e-01, 1.55541160e-01,4.99708023e-05,-4.91499027e-05,-3.67726346e-02]])
np.random.seed(42)
end = 0.0
end2 = 0.0
i = 0
i2 = 0
dodge_time = 0
run_time_dict = {"Un-Distortion":[], "resize":[], "Range":[],"Marking Pixels":[], "Converting Cords":[],"Kmeans":[],"Buffer":[],"Main Punch":[],"Slope":[], "Punch Vector Calc":[], "Avoidance":[], "Total End":[], "Output End":[]}

while cap.isOpened():
    ret, frame = cap.read()
    st = time.time()
    frame = cv.undistort(frame, camera_matrix, distortion_coeff, None, camera_matrix)
    run_time_dict["Un-Distortion"].append(time.time() - st)
    frame = frame_resize(frame)
    run_time_dict["resize"].append(time.time() - st)
   
    if not ret:
        print("Can't receive frame (stream end?). Exiting ...")
        break
    # Convert the frame to the HSV color space (better for color tracking)
    hsv_frame = cv.cvtColor(frame, cv.COLOR_BGR2HSV)
    
    lower_bound_gloves = np.array([0, 100, 100])
    upper_bound_gloves = np.array([15, 255, 255])
    lower_bound_bot = np.array([130, 100, 100])
    upper_bound_bot = np.array([160, 255, 255])
    # for yellow target
    lower_bound_gloves = np.array([20, 100, 100])
    upper_bound_gloves = np.array([30, 255, 255])
    # lower_bound_bot = np.array([130, 100, 100])
    # upper_bound_bot = np.array([160, 255,255])
    # Create a binary mask for the specified color
    color_mask_gloves = cv.inRange(hsv_frame, lower_bound_gloves, upper_bound_gloves)
    run_time_dict["Range"].append(time.time() - st)
    
    # all_labels = skimage.feature.blob_doh(color_mask_gloves, min_sigma=10, max_sigma=50)
    # print(all_labels)
 
    
    marked_pixel_coords = np.column_stack(np.where(color_mask_gloves > 0))
    run_time_dict["Marking Pixels"].append(time.time()-st)
    marked_coords = pixel_2_cords(marked_pixel_coords, pixel_center, real_center_dist, cam_height, user_height, camera_orientation)
    run_time_dict["Converting Cords"].append(time.time()-st)
    cord_list, cord_centers = kmeans_gpu(marked_coords, 2, cord_centers)
    print("cord centers", cord_centers)
    
    run_time_dict["Kmeans"].append(time.time() - st)
    if len(cord_list) == 2:
        centroid1 = cord_centers[0].numpy()
        centroid2 = cord_centers[1].numpy()
        if len(centroid_buffer1) >= buffer_size and len(centroid_buffer1) >= buffer_size:
            centroid_buffer1.pop()
            centroid_buffer2.pop()
        centroid_buffer1.insert(0, centroid1)
        centroid_buffer2.insert(0, centroid2)
        run_time_dict["Buffer"].append(time.time() - st)
        punch1_dist = np.linalg.norm(centroid_buffer1[0] - previous_robot_loc)
        punch2_dist = np.linalg.norm(centroid_buffer2[0] - previous_robot_loc)

        if punch1_dist < punch2_dist:
            main_punch = centroid_buffer1
            main_punch_dist = punch1_dist
            prev_punch_dist = np.linalg.norm(centroid_buffer1[1] - previous_robot_loc)
            main_centroid = cords_2_pixel(centroid1, pixel_center, real_center_dist, cam_height, user_height, camera_orientation)
            minor_centroid = cords_2_pixel(centroid2, pixel_center, real_center_dist, cam_height, user_height, camera_orientation)
        else:
            main_punch = centroid_buffer2
            main_punch_dist = punch2_dist
            prev_punch_dist = np.linalg.norm(centroid_buffer2[1] - previous_robot_loc)
            main_centroid = cords_2_pixel(centroid2, pixel_center, real_center_dist, cam_height, user_height, camera_orientation)
            minor_centroid = cords_2_pixel(centroid1, pixel_center, real_center_dist, cam_height, user_height, camera_orientation)
        run_time_dict["Main Punch"].append(time.time() - st)
        
         
        punch_trajectory_line_slope = (main_punch[1][1] - main_punch[0][1]) / (main_punch[1][0] - main_punch[0][0])
        punch_trajectory_line_offset = main_punch[0][1] - punch_trajectory_line_slope * main_punch[0][0]
        punch_y_check = punch_trajectory_line_slope * previous_robot_loc[0] + punch_trajectory_line_offset
        dist_from_punch_traj = np.linalg.norm(np.array([previous_robot_loc[0], punch_y_check]) - previous_robot_loc)
        run_time_dict["Slope"].append(time.time() - st)
        
        vector_2frames = main_punch[0] - main_punch[1]
        norm_vector_2frames = np.linalg.norm(vector_2frames)
        hat_vector_2frames = vector_2frames / norm_vector_2frames
        run_time_dict["Punch Vector Calc"].append(time.time() - st)
        if norm_vector_2frames >= .05:
            dodge_time = time.time()
            if dist_from_punch_traj <= avoidance_dist:
                if previous_robot_loc[0] >= 0:
                    vx = -1 * np.abs(hat_vector_2frames[0])
                else:
                    vx = np.abs(hat_vector_2frames[0])
                if previous_robot_loc[1] >= 0:
                    vy = -1 * np.abs(hat_vector_2frames[1])
                else:
                    vy = np.abs(hat_vector_2frames[1])
                hat_avoidance_vector = np.array([vx, vy])
                # if norm_vector_2frames > .05 and main_punch_dist < .75:
                print("its coming")
                if main_punch_dist - prev_punch_dist < .05:
                    previous_robot_loc = previous_robot_loc + (avoidance_dist - dist_from_punch_traj) * hat_avoidance_vector + (avoidance_dist / 2) * hat_avoidance_vector
                    run_time_dict["Avoidance"].append(time.time() - st)
        elif time.time() - dodge_time >= np.random.uniform(1.5,3.0):
            previous_robot_loc = np.array([0, 0])
        
        run_time_dict["Total End"].append(time.time() - st)
        previous_robot_loc_pixel = cords_2_pixel(previous_robot_loc, pixel_center, real_center_dist, cam_height, user_height, camera_orientation)
        
        cv.circle(frame, tuple(main_centroid[::-1]), 15, (0, 0, 255), -1)
        cv.circle(frame, tuple(minor_centroid[::-1]), 5, (0, 255, 0), -1)
        cv.circle(frame, tuple(previous_robot_loc_pixel[::-1]), 20, (255, 255, 255), -1)
    else:
        print("away")
        # print(previous_robot_loc)
        cord_centers = torch.tensor([[float('nan'), -.5], [.5, .5]])
        # if (abs(previous_robot_loc[0]) >= .5) or (abs(previous_robot_loc[1]) >= .5) or np.isnan(previous_robot_loc).any():
        previous_robot_loc = np.array([0, 0])
        previous_robot_loc_pixel = cords_2_pixel(previous_robot_loc, pixel_center, real_center_dist, cam_height, user_height, camera_orientation)
        cv.circle(frame, tuple(previous_robot_loc_pixel[::-1]), 15, (0, 0, 0), -1)
    # Calculate the centroid (average position) of red pixels
    # if marked_pixel_coords.size > 0:
    # centroid = np.mean(marked_pixel_coords, axis=0, dtype=int)
    # print(pixel_2_cords(pixel_center, centroid, real_center_dist, cam_height, user_height, camera_orentation))
    # calibration circle
    # frame = calibration_circle(frame)
    # bgr_binary_frame = cv.cvtColor(binary_frame, cv.COLOR_HSV2BGR)
    
    
    cv.imshow('Original Frame', frame)
    run_time_dict["Output End"].append(time.time() - st)
                                       
    if cv.waitKey(1) == ord('q'):
        break

for key in run_time_dict.keys():
    runtime_list = run_time_dict[key]
    print(key, ":", sum(runtime_list)/len(runtime_list))
cap.release()
cv.destroyAllWindows()

