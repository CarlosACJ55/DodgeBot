import time
import threading
import cv2 as cv
import numpy as np
# from sklearn.cluster import KMeans
import torch
# from kmeans_pytorch import kmeans, kmeans_predict


# def Swap(arr, start_index, last_index):
#     arr[:, [start_index, last_index]] = arr[:, [last_index, start_index]]
#     return arr


# def pixel_2_cords(pixel_location, pixel_center_location, center_dist, camera_height, height, orientation):
#     real_ratio = (camera_height - height) / camera_height
#     dist = real_ratio * center_dist
#     temp = pixel_location.copy()
#     if len(temp.shape) == 1:
#         pixel_loc[0] = temp[1]
#         pixel_loc[1] = temp[0]
#     else:
#         pixel_loc = Swap(temp, 0, 1)
#     pixel_xy = pixel_loc - pixel_center_location
#     pixel_xy_ratio = pixel_xy / pixel_center_location
#     real_dist_cords = pixel_xy_ratio * dist
#     return real_dist_cords * orientation



# def Punch_centers(punch_pixels, pixel_centers, real_center_dist, cam_height, user_height, camera_orientation, cord_centers, centroid1, centroid2):
# 	while True:
# 		# marked_pixel_coords, _ , frame_grab = cam.marked_pixels()

# 		# frame = frame_grab.copy()
#         if len(punch_pixels) > 0:
# 		marked_coords = pixel_2_cords(punch_pixels.copy(), pixel_centers, real_center_dist, cam_height, user_height, camera_orientation)
# 		# run_time_dict["Converting Cords"].append(time.time()-st)
# 		cord_list, cord_centers = kmeans_gpu(marked_coords, 2, cord_centers)
# 		if len(cord_list) == 2:
# 			centroid1 = cord_centers[0].numpy()
# 			centroid2 = cord_centers[1].numpy()

# 		else:
# 			cord_centers = torch.tensor([[float('nan'), -.5], [.5, .5]])
test_pix = np.array([[0,0],[1,2],[3,4]])
test = torch.tensor([[-.5, 0], [.5, 1]])
test1 = np.array([5,5])
cord_centers = [[]]
cord_centers[0] = torch.tensor([[float('nan'), float('nan')], [float('nan'), float('nan')]])
print(len(cord_centers[0]))
print(id(cord_centers))
cord_centers[0] = []
print(len(cord_centers[0]))
print(id(cord_centers))
if cord_centers[0] == torch.tensor([[float('nan'), float('nan')], [float('nan'), float('nan')]]):
	print("true")
test2 = np.array([10,10])

print(id(test1))
print(id(test2))
test1[0] = test[0][0]
test1[1] = test[0][1]
print(id(test1))


test_pix1 = np.array([[]])
print(len(test_pix1))
print(test_pix)
print(len(test_pix))
# print(test_pix.shape)
# print(len(test_pix.shape))
