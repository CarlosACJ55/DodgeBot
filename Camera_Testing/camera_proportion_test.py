import numpy as np

# print(cv.cuda.getDevice())
centroid_buffer1 = [np.zeros(2, dtype=float)]
# print(centroid_buffer1)
print("\n")
image_sensor_width = 5.44  # mm (horizontal)
image_sensor_height = 3.072  # mm (vertical)
ratio = 16 / 9
focal_length = 2.9  # mm

# https://en.wikipedia.org/wiki/Angle_of_view_(photography)#Calculating_a_camera%27s_angle_of_view
# horizontal_fov = 2 * np.arctan(image_sensor_width / (2 * focal_length))
# vertical_fov = 2 * np.arctan(image_sensor_height / (2 * focal_length))
# diagonal_fov = 2 * np.arctan(np.sqrt(image_sensor_height ** 2 + image_sensor_width ** 2) / (2 * focal_length))
# print(horizontal_fov)
# print(vertical_fov)
# print(diagonal_fov)


def pixel_2_cords(pixel_location, pixel_center_location, center_dist, camera_height, height, orientation):
    real_ratio = (camera_height - height) / camera_height
    dist = real_ratio * center_dist
    pixel_xy = pixel_location - pixel_center_location

    pixel_xy_ratio = pixel_xy / pixel_center_location
    real_dist_cords = pixel_xy_ratio * dist
    return real_dist_cords * orientation


def cords_2_pixel(real_dist_cords, pixel_center_location, center_dist, camera_height, height, inv_camera_orientation):
    real_ratio = (camera_height - height) / camera_height
    dist = real_ratio * center_dist
    orientated_cords = real_dist_cords * inv_camera_orientation
    pixel_xy_ratio = orientated_cords / dist

    pixel_xy = pixel_xy_ratio * pixel_center_location
    pixel_location = pixel_center_location - pixel_xy
    return pixel_location.astype('uint16')

# def pixel_2_cords(pixel_location, pixel_center_location, center_dist, camera_height, height, orientation):
#     real_ratio = (camera_height - height) / camera_height
#     dist = real_ratio * center_dist
#     temp = pixel_location.copy()
#     pixel_loc = pixel_location.copy()
#     pixel_loc[0] = temp[1]
#     pixel_loc[1] = temp[0]
#     pixel_xy = pixel_loc - pixel_center_location

#     pixel_xy_ratio = pixel_xy / pixel_center_location
#     real_dist_cords = pixel_xy_ratio * dist
#     return real_dist_cords * orientation


# def cords_2_pixel(real_dist_cords, pixel_center_location, center_dist, camera_height, height, inv_camera_orientation):
#     real_ratio = (camera_height - height) / camera_height
#     dist = real_ratio * center_dist
    
#     orientated_cords = real_dist_cords * inv_camera_orientation
#     pixel_xy_ratio = orientated_cords / dist

#     pixel_xy = pixel_xy_ratio * pixel_center_location
#     pixel_location = pixel_center_location - pixel_xy
#     temp = pixel_location.copy()
#     pixel_location[0] = temp[1]
#     pixel_location[1] = temp[0]
#     return pixel_location.astype('uint16')


# real_center_dist = 1.00
# cam_height = 2
# user_height = 1.00
# camera_orientation = np.array([1, -1])

pixel_center = np.array([360 / 2, 360 / 2], dtype=int)

cam_height = 2
user_height = 1
real_center_dist = 2
camera_orientation = np.array([1, -1])
inv_camera_orientation = -1 * camera_orientation

pixel_loc = np.array([45, 45])
xy = pixel_2_cords(pixel_loc.copy(), pixel_center, real_center_dist, cam_height, user_height, camera_orientation)
print(f"pixel_loc:{pixel_loc} -> loc:{xy}")
pixel_loc = cords_2_pixel(xy, pixel_center, real_center_dist, cam_height, user_height, -1*camera_orientation)
print(f"loc:{xy} -> pixel_loc:{pixel_loc}")
print("***************************")
pixel_loc = np.array([304, 109])
# print(pixel_loc)
xy = pixel_2_cords(pixel_loc.copy(), pixel_center, real_center_dist, cam_height, user_height, camera_orientation)
print(f"pixel_loc:{pixel_loc} -> loc:{xy}")
pixel_loc = cords_2_pixel(xy, pixel_center, real_center_dist, cam_height, user_height, -1*camera_orientation)
print(f"loc:{xy} -> pixel_loc:{pixel_loc}")
print("***************************")
pixel_loc = np.array([90, 135])
xy = pixel_2_cords(pixel_loc.copy(), pixel_center, real_center_dist, cam_height, user_height, camera_orientation)
print(f"pixel_loc:{pixel_loc} -> loc:{xy}")
pixel_loc = cords_2_pixel(xy, pixel_center, real_center_dist, cam_height, user_height, -1*camera_orientation)
print(f"loc:{xy} -> pixel_loc:{pixel_loc}")
print("***************************")
pixel_loc = np.array([270, 315])
xy = pixel_2_cords(pixel_loc.copy(), pixel_center, real_center_dist, cam_height, user_height, camera_orientation)
print(f"pixel_loc:{pixel_loc} -> loc:{xy}")
pixel_loc = cords_2_pixel(xy, pixel_center, real_center_dist, cam_height, user_height, -1*camera_orientation)
print(f"loc:{xy} -> pixel_loc:{pixel_loc}")
# print("***************************")
print("\n")


# 2.36855
# cam_height = 2.36855


R = 1 #real life radius
R_pix = int((R/real_center_dist) * pixel_center[0])
print("Rpix", R_pix)
x = .1
y = .05
z = np.sqrt(R**2 - (y**2 + x**2))
print("z_real", z)
print("z_ratio", z/R)
cam_height = 3
user_height = z
xy = np.array([x,y])
print("Real xy:", xy)
xy_pix = cords_2_pixel(xy, pixel_center, real_center_dist, cam_height, user_height, -1*camera_orientation)
print("pix loc:", xy_pix)
xy_pix_center_adjusted = xy_pix-pixel_center
# print("xy_pix_center_adjusted", xy_pix_center_adjusted)
z_pix = np.sqrt(R_pix**2 - (xy_pix_center_adjusted[0]**2 + xy_pix_center_adjusted[1]**2))
# print(z_pix)
z_pix_ratio = z_pix / R_pix
print(z_pix_ratio)
# z = z_pix_ratio * R
print("z_simulated", z)
user_height = z
xy = pixel_2_cords(xy_pix, pixel_center, real_center_dist, cam_height, user_height, camera_orientation)
print("xy simulated",xy)

# user_height = 0
# xy = pixel_2_cords(xy_pix, pixel_center, real_center_dist, cam_height, user_height, camera_orientation)
# print("Rad xy:", xy)
# new_z = 1#np.sqrt(R**2 - ((np.sqrt(xy[0]**2 + xy[1]**2)**2)*np.pi)**2)
# print(new_z)
# user_height = new_z
# xy = pixel_2_cords(xy_pix, pixel_center, real_center_dist, cam_height, user_height, camera_orientation)
# print("Simulated xy", xy)




# xy_pix_simulation = cords_2_pixel(xy, pixel_center, real_center_dist, cam_height, user_height, -1*camera_orientation)

# xy = pixel_2_cords(pixel_loc, pixel_center, real_center_dist, cam_height, user_height, camera_orientation)
# print(xy)
# z = np.sqrt(1 - (xy[0]**2 + xy[1]**2))
# user_height = z
# xy = pixel_2_cords(pixel_loc, pixel_center, real_center_dist, cam_height, user_height, camera_orientation)
# print(xy)
# xy_pix = cords_2_pixel(xy, pixel_center, real_center_dist, cam_height, user_height, -1*camera_orientation)
# print(xy_pix)


# print("**")
# user_height = .75
# xy = pixel_2_cords(pixel_loc, pixel_center, real_center_dist, cam_height, user_height, camera_orientation)
# print(xy)
# # print(np.sqrt(1 - (xy[0]**2 + xy[1]**2)))
# user_height = .5
# xy = pixel_2_cords(pixel_loc, pixel_center, real_center_dist, cam_height, user_height, camera_orientation)
# print(xy)
# # print(np.sqrt(1 - (xy[0]**2 + xy[1]**2)))
# user_height = .25
# xy = pixel_2_cords(pixel_loc, pixel_center, real_center_dist, cam_height, user_height, camera_orientation)
# print(xy)
# # print(np.sqrt(1 - (xy[0]**2 + xy[1]**2)))
# user_height = 0
# xy = pixel_2_cords(pixel_loc, pixel_center, real_center_dist, cam_height, user_height, camera_orientation)
# print(xy)
# print(np.sqrt(1 - (xy[0]**2 + xy[1]**2)))
# xy = np.array([.25, .25])
# xy_pix = cords_2_pixel(xy, pixel_center, real_center_dist, cam_height, user_height, -1*camera_orientation)
# print(xy)
# print(xy_pix)

# xy_pix = cords_2_pixel(np.array([0,.25]), pixel_center, real_center_dist, cam_height, user_height, -1*camera_orientation)
# print(xy_pix)
# xy_pix = cords_2_pixel(np.array([0,.25+.18]), pixel_center, real_center_dist, cam_height, user_height, -1*camera_orientation)
# print(xy_pix)
# print(np.random.choice([-1, 0, 1]))