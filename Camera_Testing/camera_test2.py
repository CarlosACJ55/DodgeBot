import time

import cv2 as cv
import numpy as np
# from sklearn.cluster import KMeans
import torch
from kmeans_pytorch import kmeans, kmeans_predict


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


def kmeans_gpu(identified_punch_cords, num_gloves, prev_cluster_centers):
    if identified_punch_cords.size > 0:
        identified_punch_cords_torch = torch.from_numpy(identified_punch_cords)
        try:
            if prev_cluster_centers[0, 0] == -10:

                # st = time.time()
                # if prev_cluster_centers[0][0] == -10:
                cluster_labels, punch_centers = kmeans(X=identified_punch_cords_torch, num_clusters=num_gloves,
                                                       device='cuda:0')
            else:
                cluster_labels = kmeans_predict(identified_punch_cords_torch, prev_cluster_centers, device='cuda:0')
            # KMeans(n_clusters=num_gloves, n_init=10, algorithm="lloyd")

            # kmeans.fit(identified_punch_cords)
            # print("kmeans spec:",st - time.time())
            # cluster_labels = kmeans.labels_
            # cluster_centers = kmeans.cluster_centers_


            punch1_pixel = identified_punch_cords[cluster_labels == 0]
            punch2_pixel = identified_punch_cords[cluster_labels == 1]
            # print(punch_centers)
            punch_centers = torch.Tensor([np.mean(punch1_pixel, axis=0), np.mean(punch2_pixel, axis=0)])
            # print(punch_centers)
            punch_pixels = [punch1_pixel, punch2_pixel]

            return punch_pixels, punch_centers
        except ValueError as e:
            return [identified_punch_cords], torch.tensor([[-10, -10], [-10, -10]])
    else:
        return [], torch.tensor([[-10, -10], [-10, -10]])


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
user_height = 1.49
camera_orientation = np.array([-1, 1])
buffer_size = 3
centroid_buffer1 = [np.zeros(2, dtype=float)] * buffer_size
centroid_buffer2 = [np.zeros(2, dtype=float)] * buffer_size
previous_robot_loc = np.array([0, 0])
previous_robot_loc_pixel = cords_2_pixel(previous_robot_loc, pixel_center, real_center_dist, cam_height, user_height,
                                         camera_orientation)
max_dodge_dist = .1
avoidance_dist = .15
cord_centers = torch.tensor([[-10, -10], [-10, -10]])
np.random.seed(42)

while cap.isOpened():
    ret, frame = cap.read()
    frame = frame_resize(frame)
    st = time.time()
    if not ret:
        print("Can't receive frame (stream end?). Exiting ...")
        break
    # Convert the frame to the HSV color space (better for color tracking)
    hsv_frame = cv.cvtColor(frame, cv.COLOR_BGR2HSV)
    print("color con:", time.time() - st)
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
    print("range:", time.time() - st)
    # color_mask_bot = cv.inRange(hsv_frame, lower_bound_bot, upper_bound_bot)
    # color_mask_bot = cv.inRange(hsv_frame, lower_bound_bot, upper_bound_bot)
    # color_mask = color_mask / 255
    result = cv.bitwise_and(frame, frame, mask=color_mask_gloves)
    # print("bitwise &", time.time() - st)
    # results = cv.bitwise_and(frame)
    # rgb_frame = cv.cvtColor(frame, cv.COLOR_BGR2RGB)
    # frame_shape = rgb_frame.shape
    # vectorized = rgb_frame.reshape((-1,3))
    # results = cv.bitwise_and(frame)
    # color_mask_3d = np.stack((color_mask,) * 3, axis=-1)
    # Find the coordinates of all marked color pixels in the mask
    # finds all the pixels where the condition is true
    # the returns a list of cordinates where its true
    marked_pixel_coords = np.column_stack(np.where(color_mask_gloves > 0))

    marked_coords = pixel_2_cords(marked_pixel_coords, pixel_center, real_center_dist, cam_height, user_height,
                                  camera_orientation)
    # cv.imshow('frame', marked_pixel_coords)
    # binary_frame = color_mask_3d * frame
    # binary_frame = np.logical_and(hsv_frame, color_mask_3d)
    # print(binary_frame.shape)
    print("color process:", time.time() - st)
    # cord_centers = [np.array(1,1), np.arr]
    cord_list, cord_centers = kmeans_gpu(marked_coords, 2, cord_centers)
    print("cord centers", cord_centers.shape)
    print("kmeans:", time.time() - st)
    if len(cord_list) == 2:
        # print("centroid:", time.time()-st)
        # centroid1 = np.mean(cord_list[0], axis=0, dtype=int)
        # centroid2 = np.mean(cord_list[1], axis=0, dtype=int)
        centroid1 = cord_centers[0].numpy()
        centroid2 = cord_centers[1].numpy()
        print("centroid1, centroid2", centroid1, centroid2)
        real_centroid1 = centroid1  # pixel_2_cords(centroid1, pixel_center, real_center_dist, cam_height,
        # user_height, camera_orentation)
        real_centroid2 = centroid2  # pixel_2_cords(centroid2, pixel_center, real_center_dist, cam_height,
        # user_height, camera_orentation)
        print("pixel2cords:", time.time() - st)
        if len(centroid_buffer1) >= buffer_size and len(centroid_buffer1) >= buffer_size:
            centroid_buffer1.pop()
            centroid_buffer2.pop()
        centroid_buffer1.insert(0, real_centroid1)
        centroid_buffer2.insert(0, real_centroid2)
        print("buffer:", time.time() - st)
        punch1_dist = np.linalg.norm(centroid_buffer1[0] - previous_robot_loc)
        punch2_dist = np.linalg.norm(centroid_buffer2[0] - previous_robot_loc)
        if punch1_dist > punch2_dist:
            main_punch = centroid_buffer1
            main_punch_dist = punch1_dist
            prev_punch_dist = np.linalg.norm(centroid_buffer1[buffer_size - 1] - previous_robot_loc)
            centroid = cords_2_pixel(centroid1, pixel_center, real_center_dist, cam_height, user_height,
                                     camera_orientation)
            centroid_ = cords_2_pixel(centroid2, pixel_center, real_center_dist, cam_height, user_height,
                                      camera_orientation)
        else:
            main_punch = centroid_buffer2
            main_punch_dist = punch2_dist
            prev_punch_dist = np.linalg.norm(centroid_buffer2[buffer_size - 1] - previous_robot_loc)
            centroid = cords_2_pixel(centroid2, pixel_center, real_center_dist, cam_height, user_height,
                                     camera_orientation)
            centroid_ = cords_2_pixel(centroid1, pixel_center, real_center_dist, cam_height, user_height,
                                      camera_orientation)

        print("norm:", time.time() - st)
        # mag_buffer1 = np.linalg.norm(np.abs(centroid_buffer1[len(centroid_buffer1)-1] - centroid_buffer1[0]))
        # mag_buffer2 = np.linalg.norm(np.abs(centroid_buffer2[len(centroid_buffer2)-1] - centroid_buffer2[0]))
        # checks to see if rate of change is greater than .2 ie, saying that punch has begun
        # if mag_buffer1 > .2 or mag_buffer2 > .2:
        #     if mag_buffer1 > mag_buffer2:
        #         main_punch = centroid_buffer1
        #         centroid = centroid1
        #         centroid_ = centroid2
        # else:
        #     main_punch = centroid_buffer2
        #     centroid = centroid2
        #     centroid_ = centroid1
        # punch_trajectory_line_slope = (main_punch[len(main_punch)-1][1] - main_punch[0][1]) / (main_punch[len(
        # main_punch)-1][0] - main_punch[0][0])
        punch_trajectory_line_slope = (main_punch[1][1] - main_punch[0][1]) / (main_punch[1][0] - main_punch[0][0])
        punch_trajectory_line_offset = main_punch[0][1] - punch_trajectory_line_slope * main_punch[0][0]
        punch_y_check = punch_trajectory_line_slope * previous_robot_loc[0] + punch_trajectory_line_offset
        dist_from_punch_traj = np.linalg.norm(np.array([previous_robot_loc[0], punch_y_check]) - previous_robot_loc)
        print("slope:", time.time() - st)
        vector_2frames = main_punch[0] - main_punch[1]
        norm_vector_2frames = np.linalg.norm(vector_2frames)
        hat_vector_2frames = vector_2frames / norm_vector_2frames
        if main_punch_dist < prev_punch_dist:
            if dist_from_punch_traj <= avoidance_dist:
                if previous_robot_loc[0] >= 0:
                    vx = -1 * np.abs(hat_vector_2frames[0])
                else:
                    vx = np.abs(hat_vector_2frames[0])
                if previous_robot_loc[0] >= 0:
                    vy = -1 * np.abs(hat_vector_2frames[1])
                else:
                    vy = np.abs(hat_vector_2frames[1])
                hat_avoidance_vector = np.array([vx, vy])
                if norm_vector_2frames > .05 and main_punch_dist < .75:
                    print("its coming")
                    previous_robot_loc = previous_robot_loc + (
                            avoidance_dist - dist_from_punch_traj) * hat_avoidance_vector + (
                                                 avoidance_dist / 2) * hat_avoidance_vector
        previous_robot_loc_pixel = cords_2_pixel(previous_robot_loc, pixel_center, real_center_dist, cam_height,
                                                 user_height, camera_orientation)
        cv.circle(frame, tuple(centroid[::-1]), 5, (0, 0, 255), -1)
        cv.circle(frame, tuple(centroid_[::-1]), 5, (0, 255, 0), -1)
        cv.circle(frame, tuple(previous_robot_loc_pixel[::-1]), 15, (255, 255, 255), -1)
    else:
        print("away")
        # print(previous_robot_loc)
        cord_centers = torch.tensor([[-10, -10], [-10, -10]])
        if (abs(previous_robot_loc[0]) >= .5) or (abs(previous_robot_loc[1]) >= .5) or np.isnan(
                previous_robot_loc).any():
            previous_robot_loc = np.array([0, 0])
            previous_robot_loc_pixel = cords_2_pixel(previous_robot_loc, pixel_center, real_center_dist, cam_height,
                                                     user_height, camera_orientation)
        cv.circle(frame, tuple(previous_robot_loc_pixel[::-1]), 15, (0, 0, 0), -1)
    # Calculate the centroid (average position) of red pixels
    # if marked_pixel_coords.size > 0:
    # centroid = np.mean(marked_pixel_coords, axis=0, dtype=int)
    # print(pixel_2_cords(pixel_center, centroid, real_center_dist, cam_height, user_height, camera_orentation))
    # calibration circle
    # frame = calibration_circle(frame)
    # bgr_binary_frame = cv.cvtColor(binary_frame, cv.COLOR_HSV2BGR)
    print("end:", time.time() - st)
    cv.imshow('Original Frame', frame)
    if cv.waitKey(1) == ord('q'):
        break
cap.release()
cv.destroyAllWindows()
