import time

import cv2 as cv
import numpy as np
import torch
from kmeans_pytorch import kmeans, kmeans_predict

from vision.stream import Stream


def Swap(arr, start_index, last_index):
    arr[:, [start_index, last_index]] = arr[:, [last_index, start_index]]
    return arr


def pixel_2_cords(pixel_location, pixel_center_location, center_dist, camera_height, height, orientation):
    dist = (camera_height - height) / camera_height * center_dist
    temp = pixel_location.copy()
    pixel_loc = np.array([temp[1], temp[0]]) if len(temp.shape) == 1 else Swap(temp, 0, 1)
    real_dist_cords = ((pixel_loc - pixel_center_location) / pixel_center_location) * dist
    return real_dist_cords * orientation


def cords_2_pixel(real_dist_cords, pixel_center_location, center_dist, camera_height, height, inv_camera_orientation):
    real_ratio = (camera_height - height) / camera_height
    dist = real_ratio * center_dist
    orientated_cords = real_dist_cords * inv_camera_orientation
    pixel_xy_ratio = orientated_cords / dist
    pixel_xy = pixel_xy_ratio * pixel_center_location
    pixel_location = pixel_center_location - pixel_xy
    temp = pixel_location.copy()
    if len(temp.shape) == 1:
        pixel_location[0] = temp[1]
        pixel_location[1] = temp[0]
    else:
        pixel_location = Swap(temp, 0, 1)

    return pixel_location.astype('uint16')


def kmeans_gpu(coords, n, prev_cent):
    cluster_lbl = None
    if coords.size > 0:
        identified_punch_cords_torch = torch.from_numpy(coords)
        try:
            if prev_cent.isnan().any():
                cluster_lbl, punch_centers = kmeans(X=identified_punch_cords_torch, num_clusters=n, device='cuda:0')
            elif len(prev_cent.shape) == 2:
                cluster_lbl = kmeans_predict(identified_punch_cords_torch, prev_cent, device='cuda:0')
            punch1_pixel = coords[cluster_lbl == 0]
            punch2_pixel = coords[cluster_lbl == 1]
            punch_centers = torch.Tensor([np.mean(punch1_pixel, axis=0), np.mean(punch2_pixel, axis=0)])
            punch_pixels = [punch1_pixel, punch2_pixel]
            return punch_pixels, punch_centers
        except IndexError:
            return [coords], prev_cent
        except ValueError:
            return [coords], prev_cent
    else:
        return [], torch.tensor([[float('nan'), -.5], [.5, .5]])


px_cent = np.array([360 / 2, 360 / 2], dtype=int)
re_center_d = 1.14
cam_h = 2.36855
user_h = 1.35
bot_h = 1
orient = np.array([1, -1])
inv_orient = -1 * orient
buffer_size = 3
centroid_buffer1 = [np.zeros(2, dtype=float)] * buffer_size
centroid_buffer2 = [np.zeros(2, dtype=float)] * buffer_size
robot_loc = np.array([0, 0])
robot_loc_pixel = cords_2_pixel(robot_loc, px_cent, re_center_d, cam_h, user_h, inv_orient)
max_dodge_dist = .1
avoidance_dist = .15
Radius = .5
user_center_dist = ((cam_h - user_h) / cam_h) * re_center_d
edge_percentage = (.5 * user_center_dist) / Radius
real_center_dist_robot = ((cam_h - bot_h) / cam_h) * re_center_d
cord_centers = torch.tensor([[-.5, -.5], [.5, .5]])
np.random.seed(42)

i = 0
dodge_time = 0
run_time_dict = {"Marking Pixels": [], "Converting Cords": [], "Kmeans": [], "Buffer": [], "Main Punch": [],
                 "Slope": [], "Punch Vector Calc": [], "Engage Decision": [], "Perpendicular Calc": [], "Avoidance": [],
                 "Total End": [], "Output End": []}
save = False

result = cv.VideoWriter('Testrun.mp4', cv.VideoWriter_fourcc('m', 'p', '4', 'v'), 60, (360, 360))
st1 = time.time()
cam = Stream(1)
cam.start()

while True:
    st = time.time()
    marked_pixel_coords, f = cam.punch_pixels()
    run_time_dict["Marking Pixels"].append(time.time() - st)
    marked_coords = pixel_2_cords(marked_pixel_coords.copy(), px_cent, re_center_d, cam_h, user_h, orient)
    run_time_dict["Converting Cords"].append(time.time() - st)
    cord_list, cord_centers = kmeans_gpu(marked_coords, 2, cord_centers)
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
        punch1_dist = np.linalg.norm(centroid_buffer1[0] - robot_loc)
        punch2_dist = np.linalg.norm(centroid_buffer2[0] - robot_loc)
        main_punch_dist = punch1_dist
        main_punch, minor_punch = centroid_buffer1, centroid_buffer2
        main_centroid, minor_centroid = centroid1, centroid2
        if punch1_dist > punch2_dist:
            main_punch_dist = punch2_dist
            main_punch, minor_punch = centroid_buffer2, centroid_buffer1
            main_centroid, minor_centroid = centroid2, centroid1
        main_centroid = cords_2_pixel(main_centroid, px_cent, re_center_d, cam_h, user_h, inv_orient)
        minor_centroid = cords_2_pixel(minor_centroid, px_cent, re_center_d, cam_h, user_h, inv_orient)
        prev_punch_dist = np.linalg.norm(main_punch[1] - robot_loc)
        run_time_dict["Main Punch"].append(time.time() - st)
        vector_2frames = main_punch[0] - main_punch[1]
        norm_vector_2frames = np.linalg.norm(vector_2frames)
        hat_vector_2frames = vector_2frames / norm_vector_2frames
        run_time_dict["Punch Vector Calc"].append(time.time() - st)
        prev_robot_loc = np.array([-10, -10])
        if norm_vector_2frames >= .04:
            dodge_time = time.time()
            punch_trajectory_line_slope = (main_punch[1][1] - main_punch[0][1]) / (main_punch[1][0] - main_punch[0][0])
            punch_trajectory_line_offset = main_punch[0][1] - punch_trajectory_line_slope * main_punch[0][0]
            punch_y_check = punch_trajectory_line_slope * robot_loc[0] + punch_trajectory_line_offset
            dist_from_punch_traj = np.abs(punch_y_check - robot_loc[1])
            run_time_dict["Slope"].append(time.time() - st)
            if dist_from_punch_traj <= avoidance_dist:
                run_time_dict["Engage Decision"].append(time.time() - st)
                perpendicular_v1 = np.array([hat_vector_2frames[1], -1 * hat_vector_2frames[0]])
                perpendicular_v2 = np.array([-1 * hat_vector_2frames[1], hat_vector_2frames[0]])
                punch_body_loc = (main_punch[0] + minor_punch[0]) / 2
                robot_2_body_v = punch_body_loc - robot_loc
                robot_2_body_v_hat = robot_2_body_v / np.linalg.norm(robot_2_body_v)
                run_time_dict["Perpendicular Calc"].append(time.time() - st)
                if np.linalg.norm(robot_loc) >= edge_percentage * Radius:
                    print("Edge Dodge")
                    if np.linalg.norm(perpendicular_v1 + robot_loc) < np.linalg.norm(perpendicular_v2 + robot_loc):
                        vx = perpendicular_v1[0]
                        vy = perpendicular_v1[1]
                    else:
                        vx = perpendicular_v2[0]
                        vy = perpendicular_v2[1]
                    center_vector = -1 * robot_loc
                    hat_center_vector = center_vector / np.linalg.norm(center_vector)
                    hat_avoidance_vector = np.array([vx, vy])
                    hat_avoidance_vector = .5 * hat_center_vector + .5 * hat_avoidance_vector
                    avoidance_vector = np.abs(avoidance_dist - dist_from_punch_traj) * hat_avoidance_vector + (
                            1.5 * avoidance_dist) * hat_avoidance_vector
                else:
                    print("Center Dodge")
                    if np.linalg.norm(perpendicular_v1 - robot_2_body_v_hat) >= np.linalg.norm(
                            perpendicular_v2 - robot_2_body_v_hat):
                        vx = perpendicular_v1[0]
                        vy = perpendicular_v1[1]
                    else:
                        vx = perpendicular_v2[0]
                        vy = perpendicular_v2[1]
                    hat_avoidance_vector = np.array([vx, vy])
                    avoidance_vector = np.abs(avoidance_dist - dist_from_punch_traj) * hat_avoidance_vector + (
                            avoidance_dist) * hat_avoidance_vector
                prev_robot_loc = robot_loc.copy()
                robot_loc = robot_loc + avoidance_vector
                run_time_dict["Avoidance"].append(time.time() - st)
        elif time.time() - dodge_time >= 1:
            robot_loc = np.array([0, 0])
        run_time_dict["Total End"].append(time.time() - st)
        robot_loc_pixel = cords_2_pixel(robot_loc, px_cent, re_center_d, cam_h, user_h, inv_orient)
        cv.circle(f, tuple(main_centroid[::-1]), 15, (0, 0, 255), -1)
        cv.circle(f, tuple(minor_centroid[::-1]), 5, (0, 255, 0), -1)
        if list(prev_robot_loc) != [-10, -10]:
            prev_robot_loc_pixel = cords_2_pixel(prev_robot_loc, px_cent, re_center_d, cam_h, user_h, inv_orient)
            cv.circle(f, tuple(prev_robot_loc_pixel[::-1]), 25, (255, 255, 0), -1)
            cv.circle(f, tuple(robot_loc_pixel[::-1]), 25, (255, 255, 255), -1)
        else:
            cv.circle(f, tuple(robot_loc_pixel[::-1]), 25, (0, 0, 0), -1)
    else:
        cord_centers = torch.tensor([[float('nan'), -.5], [.5, .5]])
        robot_loc = np.array([0, 0])
        robot_loc_pixel = cords_2_pixel(robot_loc, px_cent, re_center_d, cam_h, user_h, inv_orient)
        cv.circle(f, tuple(robot_loc_pixel[::-1]), 25, (150, 150, 150), -1)
    i += 1
    result.write(f)
    cv.imshow('Original Frame', f)
    run_time_dict["Output End"].append(time.time() - st)
    if cv.waitKey(1) == ord('q'):
        cam.stop()
        break

print("fps:", i / (time.time() - st1))
for key in run_time_dict.keys():
    runtime_list = run_time_dict[key]
    print(key, ":", sum(runtime_list) / len(runtime_list))
result.release()
cv.destroyAllWindows()
