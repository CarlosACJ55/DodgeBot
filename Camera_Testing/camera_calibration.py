import numpy as np

# print(cv.cuda.getDevice())
centroid_buffer1 = [np.zeros(2, dtype=float)]
print(centroid_buffer1)
print("\n")
image_sensor_width = 5.44  # mm (horizontal)
image_sensor_height = 3.072  # mm (vertical)
ratio = 16 / 9
focal_length = 2.9  # mm

# https://en.wikipedia.org/wiki/Angle_of_view_(photography)#Calculating_a_camera%27s_angle_of_view
horizontal_fov = 2 * np.arctan(image_sensor_width / (2 * focal_length))
vertical_fov = 2 * np.arctan(image_sensor_height / (2 * focal_length))
diagonal_fov = 2 * np.arctan(np.sqrt(image_sensor_height ** 2 + image_sensor_width ** 2) / (2 * focal_length))
print(horizontal_fov)
print(vertical_fov)
print(diagonal_fov)


# def pixel_2_cords(row, col):

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


center = np.array([360 / 2, 360 / 2], dtype=int)
pixel_loc = np.array([25, 25])
real_center_dist = 1.06
cam_height = 2
user_height = 1.01
camera_orientation = np.array([-1, 1])
xy = pixel_2_cords(pixel_loc, center, real_center_dist, cam_height, user_height, camera_orientation)
xy_pix = cords_2_pixel(xy, center, real_center_dist, cam_height, user_height, camera_orientation)
print(xy)
print(xy_pix)
print(np.random.choice([-1, 0, 1]))
