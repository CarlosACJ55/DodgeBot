import numpy as np
import cv2 as cv
import time
from sklearn.cluster import KMeans

image_sensor_width = 5.44 #mm (horizonal)
image_sensor_height = 3.072 #mm (vertical)
ratio = 16/9
focal_length = 2.9 #mm

#https://en.wikipedia.org/wiki/Angle_of_view_(photography)#Calculating_a_camera%27s_angle_of_view
horizonal_fov = 2 * np.arctan(image_sensor_width / (2*focal_length))
vertical_fov = 2 * np.arctan(image_sensor_height / (2*focal_length))
diagonal_fov = 2 * np.arctan(np.sqrt(image_sensor_height**2 + image_sensor_width**2) / (2*focal_length))
print(horizonal_fov)
print(vertical_fov)
print(diagonal_fov)
# def pixel_2_cords(row, col):

def pixel_2_cords(pixel_center_location, pixel_location, center_dist, camera_height, user_height, camera_orentation):
    real_ratio = user_height/camera_height
    real_center_dist = real_ratio*center_dist

    pixel_xy = pixel_center_location - pixel_location
    pixel_xy_ratio = pixel_xy / pixel_center_location
    real_dist_cords = pixel_xy_ratio*real_center_dist
    return camera_orentation*real_dist_cords

center = np.array([360/2, 360/2])
pixel_loc = np.array([0, 0])
real_center_dist = 1.06
cam_height = 2
user_height = 1.01
camera_orentation = np.array([-1,1])
# pixel_2_cords(center, pixel_loc, real_center_dist, cam_height, user_height, camera_orentation)
