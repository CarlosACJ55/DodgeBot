import time

import cv2 as cv
import numpy as np
# from sklearn.cluster import KMeans
import torch
from kmeans_pytorch import kmeans

device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
# device = torch.device('gpu')
np.random.seed(42)
torch.manual_seed(42)
torch.cuda.manual_seed(42)


def change_res(width, height):
    cap.set(3, width)
    cap.set(4, height)


def img_2_vector(img):
    img_shape = img.shape
    rows = img_shape[0]
    cols = img_shape[1]
    if len(img_shape) != 0:
        vector = img.reshape([rows * cols, len(img_shape)])
    else:
        vector = img.reshape([rows * cols, 1])
    return vector, [rows, cols]


def vector_2_image(vector, img_shape, num_colors):
    return vector.reshape([img_shape[0], img_shape[1], num_colors])


def frame_resize(f):
    shape = f.shape
    low_col = int((shape[1] / 2) - (shape[0] / 2))
    high_col = int((shape[1] / 2) + (shape[0] / 2))
    return f[:, low_col:high_col, :]


def calibration_circle(f):
    cv.circle(f, (int(f.shape[0] / 2), int(f.shape[1] / 2)), 1, (0, 255, 0), cv.FILLED)
    # cv.circle(frame, (int(5), int(5)),1, (255, 0, 0), cv.FILLED)
    # cv.circle(frame, (int(5), int(350)),1, (0, 0, 255), cv.FILLED)
    # cv.circle(frame, (int(350), int(5)),1, (0, 255, 255), cv.FILLED)
    return f


def pixel_2_cords(pixel_location, pixel_center_location, center_dist, camera_height, height, orentation):
    real_ratio = height / camera_height
    dist = real_ratio * center_dist
    pixel_xy = pixel_center_location - pixel_location
    pixel_xy_ratio = pixel_xy / pixel_center_location
    real_dist_cords = pixel_xy_ratio * dist
    return orentation * real_dist_cords


def cords_2_pixel(real_dist_cords, pixel_center_location, center_dist, camera_height, height, inv_camera_orientation):
    real_ratio = height / camera_height
    dist = real_ratio * center_dist
    orientated_cords = real_dist_cords * inv_camera_orientation
    pixel_xy_ratio = orientated_cords / dist
    pixel_xy = pixel_xy_ratio * pixel_center_location
    pixel_location = pixel_center_location - pixel_xy
    return pixel_location


def kmeans_gpu(identified_punch_cords, num_gloves):
    if identified_punch_cords.size()[0] > 0:
        try:
            # if num_punches == 0:
            # if prev_cluster_centers[0,0] == punch_pixel_cord_centers[0,0]
            cluster_labels, punch_centers = kmeans(X=identified_punch_cords, num_clusters=num_gloves, device='cuda:0')
            # else:
            # cluster_labels = kmeans_predict(identified_punch_cords, prev_cluster_centers, device='cuda:0')
            punch1_pixel = identified_punch_cords[cluster_labels == 0]
            punch2_pixel = identified_punch_cords[cluster_labels == 1]
            punch1_center = torch.mean(punch1_pixel, dim=0)
            punch2_center = torch.mean(punch2_pixel, dim=0)
            punch_centers = torch.stack((punch1_center, punch2_center))
            punch_pixels = [punch1_pixel, punch2_pixel]
            return punch_pixels, punch_centers
        except ValueError:
            return [identified_punch_cords], torch.stack(
                    [pixel_center - (pixel_center // 2), pixel_center + (pixel_center // 2)]).to(device)
    else:
        return [], torch.stack([pixel_center - (pixel_center // 2), pixel_center + (pixel_center // 2)]).to(device)


st = time.time()
cap = cv.VideoCapture(0, cv.CAP_DSHOW)
# cap = cv.VideoCapture(0,cv.CAP_V4L2)
if not cap.isOpened():
    print("Cannot open camera")
    exit()
change_res(640, 360)
pixel_center = torch.tensor([360 // 2, 360 // 2], dtype=torch.int16).to(device)
real_center_dist = 1.06
cam_height = 2
# Max - 1.35
# Ayman - 1.524
user_height = 1.49
camera_orentation = torch.tensor([-1, 1], dtype=torch.int16, device=device)
buffer_size = 3
centroid_buffer1 = [torch.zeros(2, dtype=torch.float16, device=device)] * buffer_size
centroid_buffer2 = [torch.zeros(2, dtype=torch.float16, device=device)] * buffer_size
# centroid_buffer1 = [np.zeros(2, dtype=float)]*buffer_size
# centroid_buffer2 = [np.zeros(2, dtype=float)]*buffer_size
# previous_robot_loc = np.array([0,0])
previous_robot_loc = torch.zeros(2, dtype=torch.float16, device=device)
previous_robot_loc_pixel = cords_2_pixel(previous_robot_loc, pixel_center, real_center_dist, cam_height, user_height,
                                         camera_orentation)  # .dtype(int)
max_dodge_dist = .1
avoidance_dist = .15
punch_pixel_cord_centers = torch.stack([pixel_center - (pixel_center // 2), pixel_center + (pixel_center // 2)]).to(
        device)
# punch_pixel_cord_centers = torch.stack([pixel_center-(pixel_center//2), pixel_center+(pixel_center//2)]).to(device)
num_punches = 0

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
    # for yellow target
    lower_bound_gloves = np.array([20, 100, 100])
    upper_bound_gloves = np.array([30, 255, 255])

    # Create a binary mask for the specified color
    color_mask_gloves = cv.inRange(hsv_frame, lower_bound_gloves, upper_bound_gloves)
    result = cv.bitwise_and(frame, frame, mask=color_mask_gloves)
    print("range:", time.time() - st)

    # Find the coordinates of all marked color pixels in the mask
    # finds all the pixels where the condition is true
    # the returns a list of cordinates where its true
    marked_pixel_coords = np.column_stack(np.where(color_mask_gloves > 0))
    marked_pixel_coords = torch.tensor(marked_pixel_coords, dtype=torch.float16, device=device)
    marked_coords = pixel_2_cords(marked_pixel_coords, pixel_center, real_center_dist, cam_height, user_height,
                                  camera_orentation)

    print("color process:", time.time() - st)
    # cord_centers = [np.array(1,1), np.arr]
    # kmeans_gpu(marked_pixel_coords, 2)
    cord_list, punch_pixel_cord_centers = kmeans_gpu(marked_coords, 2)
    print("cord centers", punch_pixel_cord_centers)
    print("kmeans:", time.time() - st)

    if len(cord_list) == 2:
        # print("centroid:", time.time()-st)
        # centroid1 = np.mean(cord_list[0], axis=0, dtype=int)
        # centroid2 = np.mean(cord_list[1], axis=0, dtype=int)
        centroid1 = punch_pixel_cord_centers[0]
        centroid2 = punch_pixel_cord_centers[1]
        # print("centroid1, centroid2", centroid1, centroid2)
        real_centroid1 = pixel_2_cords(centroid1, pixel_center, real_center_dist, cam_height, user_height,
                                       camera_orentation)
        real_centroid2 = pixel_2_cords(centroid2, pixel_center, real_center_dist, cam_height, user_height,
                                       camera_orentation)
        print("pixel2cords:", time.time() - st)

        # inserts the new cord

        if len(centroid_buffer1) >= buffer_size and len(centroid_buffer1) >= buffer_size:
            # takes out the last values in the buffer
            centroid_buffer1.pop()
            centroid_buffer2.pop()
        centroid_buffer1.insert(0, real_centroid1)
        centroid_buffer2.insert(0, real_centroid2)

        print("buffer:", time.time() - st)

        punch1_dist = torch.norm(centroid_buffer1[0] - previous_robot_loc)
        punch2_dist = torch.norm(centroid_buffer2[0] - previous_robot_loc)

        if punch1_dist > punch2_dist:
            main_punch = centroid_buffer1
            main_punch_dist = punch1_dist
            prev_punch_dist = torch.norm(centroid_buffer1[buffer_size - 1] - previous_robot_loc)
            centroid = centroid1
            centroid_ = centroid2  # centroid = cords_2_pixel(centroid1, pixel_center, real_center_dist, cam_height,
            # user_height, camera_orentation)  # centroid_ = cords_2_pixel(centroid2, pixel_center, real_center_dist,
            # cam_height, user_height, camera_orentation)

        else:
            main_punch = centroid_buffer2
            main_punch_dist = punch2_dist
            prev_punch_dist = torch.norm(centroid_buffer2[buffer_size - 1] - previous_robot_loc)
            centroid = centroid2
            centroid_ = centroid1  # centroid = cords_2_pixel(centroid2, pixel_center, real_center_dist, cam_height,
            # user_height, camera_orentation)  # centroid_ = cords_2_pixel(centroid1, pixel_center, real_center_dist,
            # cam_height, user_height, camera_orentation)
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
        dist_from_punch_traj = torch.norm(torch.tensor([previous_robot_loc[0], punch_y_check], dtype=torch.float16).to(
            device) - previous_robot_loc)
        print("slope:", time.time() - st)
        vector_2frames = main_punch[0] - main_punch[1]
        norm_vector_2frames = torch.norm(vector_2frames)
        hat_vector_2frames = vector_2frames / norm_vector_2frames
        if main_punch_dist < prev_punch_dist:
            if dist_from_punch_traj <= avoidance_dist:
                if previous_robot_loc[0] >= 0:
                    vx = -1 * torch.abs(hat_vector_2frames[0])
                else:
                    vx = torch.abs(hat_vector_2frames[0])

                if previous_robot_loc[0] >= 0:
                    vy = -1 * torch.abs(hat_vector_2frames[1])
                else:
                    vy = torch.abs(hat_vector_2frames[1])
                hat_avoidance_vector = torch.tensor([vx, vy], dtype=torch.float16).to(device)
                if norm_vector_2frames > .05 and main_punch_dist < .75:
                    print("its coming")
                    previous_robot_loc = previous_robot_loc + (
                            avoidance_dist - dist_from_punch_traj) * hat_avoidance_vector + (
                                                 avoidance_dist / 2) * hat_avoidance_vector

        previous_robot_loc_pixel = cords_2_pixel(previous_robot_loc, pixel_center, real_center_dist, cam_height,
                                                 user_height, camera_orentation)
        print("processing done", time.time() - st)
        centroid = centroid.cpu().to(torch.int16).numpy()
        centroid_ = centroid_.cpu().to(torch.int16).numpy()
        previous_robot_loc_pixel = previous_robot_loc_pixel.cpu().to(torch.int16).numpy()
        cv.circle(frame, tuple(centroid[::-1]), 5, (0, 0, 255), -1)
        cv.circle(frame, tuple(centroid_[::-1]), 5, (0, 255, 0), -1)
        cv.circle(frame, tuple(previous_robot_loc_pixel[::-1]), 15, (255, 255, 255), -1)
        previous_robot_loc_pixel = torch.tensor(previous_robot_loc_pixel, dtype=torch.int16).to(device)
    else:
        print("away")
        # print(previous_robot_loc)
        # cord_centers = torch.tensor([[-10, -10],[-10,-10]])
        num_punches = 0
        # torch.stack([pixel_center-(pixel_center//2), pixel_center+(pixel_center//2)]).to(device)
        if (abs(previous_robot_loc[0]) >= .5) or (abs(previous_robot_loc[1]) >= .5) or torch.isnan(
                previous_robot_loc).any():
            previous_robot_loc = torch.tensor([0, 0], dtype=torch.float16).to(device)
            previous_robot_loc_pixel = cords_2_pixel(previous_robot_loc, pixel_center, real_center_dist, cam_height,
                                                     user_height, camera_orentation)
            print(previous_robot_loc_pixel)
        previous_robot_loc_pixel = previous_robot_loc_pixel.cpu().to(torch.int16).numpy()
        cv.circle(frame, tuple(previous_robot_loc_pixel[::-1]), 15, (0, 0, 0), -1)
        previous_robot_loc_pixel = torch.tensor(previous_robot_loc_pixel, dtype=torch.int16).to(device)

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
