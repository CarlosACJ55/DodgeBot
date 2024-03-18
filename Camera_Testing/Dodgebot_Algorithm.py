import time
import threading
import cv2 as cv
import numpy as np
# from sklearn.cluster import KMeans
import torch
from kmeans_pytorch import kmeans, kmeans_predict
# import skimage
# import sys


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

def Swap(arr, start_index, last_index):
    arr[:, [start_index, last_index]] = arr[:, [last_index, start_index]]
    return arr

def pixel_2_cords(pixel_location, pixel_center_location, center_dist, camera_height, height, orientation):
    real_ratio = (camera_height - height) / camera_height
    dist = real_ratio * center_dist
    temp = pixel_location.copy()
    if len(temp.shape) == 1:
        pixel_loc[0] = temp[1]
        pixel_loc[1] = temp[0]
    else:
        pixel_loc = Swap(temp, 0, 1)
    pixel_xy = pixel_loc - pixel_center_location
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
    
    temp = pixel_location.copy()
    if len(temp.shape) == 1:
        pixel_location[0] = temp[1]
        pixel_location[1] = temp[0]
    else:
        pixel_location = Swap(temp, 0, 1)

    return pixel_location.astype('uint16')


# def pixel_2_cords(pixel_location, pixel_center_location, center_dist, camera_height, height, orientation):
#     real_ratio = (camera_height - height) / camera_height
#     dist = real_ratio * center_dist
#     pixel_xy = pixel_location - pixel_center_location

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
#     return pixel_location.astype('uint16')



def kmeans_gpu(identified_punch_cords, num_gloves, prev_cluster_centers, center_dist_threshold=-1):
    if identified_punch_cords.size > 0:
        identified_punch_cords_torch = torch.from_numpy(identified_punch_cords)
        try:
            if prev_cluster_centers.isnan().any() == True:
                cluster_labels, punch_centers = kmeans(X=identified_punch_cords_torch, num_clusters=num_gloves,device='cuda:0')
            elif len(prev_cluster_centers.shape) == 2:
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

class WebcamVideoStream:
	def __init__(self, src=0):
		# initialize the video camera stream and read the first frame
		# from the stream
		self.stream = cv.VideoCapture(src, cv.CAP_DSHOW)
		(self.grabbed, self.frame) = self.stream.read()
		# initialize the variable used to indicate if the thread should stopped
        
		self.lower_bound_gloves = np.array([20, 100, 100])
		self.upper_bound_gloves = np.array([30, 255, 255])
		self.mapx = np.load("mapx.npy")
		self.mapy = np.load("mapy.npy")
		self.stopped = False
	def start(self):
		# start the thread to read frames from the video stream
		threading.Thread(target=self.update, args=()).start()
		return self
	def update(self):
		# keep looping infinitely until the thread is stopped
		while True:
			# if the thread indicator variable is set, stop the thread
			if self.stopped:
				self.stream.release()
				return
			else:
				(self.grabbed, self.frame) = self.stream.read()
                
			# otherwise, read the next frame from the stream
			# (self.grabbed, self.frame) = self.stream.read()
			
	def read(self):
		# return the frame most recently read
		temp = cv.remap(self.frame, self.mapx, self.mapy, cv.INTER_LINEAR)
		temp = frame_resize(temp)
		return temp
	
	def punch_pixels(self):
		frame = self.read()
		hsv_frame = cv.cvtColor(frame, cv.COLOR_BGR2HSV)
        # Convert the frame to the HSV color space (better for color tracking)
		color_mask_gloves = cv.inRange(hsv_frame, self.lower_bound_gloves, self.upper_bound_gloves)
		return np.column_stack(np.where(color_mask_gloves > 0)), frame
	
	def stop(self):
		# indicate that the thread should be stopped
		self.stopped = True

# st = time.time()
# cap = cv.VideoCapture(1, cv.CAP_DSHOW)

# cap = cv.VideoCapture(0, cv.CAP_VFW)
# if not cap.isOpened():
    # print("Cannot open camera")
    # exit()

# change_res(640, 360)
pixel_center = np.array([360 / 2, 360 / 2], dtype=int)
real_center_dist = 1.14
cam_height = 2.36855
# Max - 1.35
# Ayman - 1.524
user_height = 1.35
robot_height = 1
camera_orientation = np.array([1, -1])
inv_camera_orientation = -1 * camera_orientation
buffer_size = 3
centroid_buffer1 = [np.zeros(2, dtype=float)] * buffer_size
centroid_buffer2 = [np.zeros(2, dtype=float)] * buffer_size
robot_loc = np.array([0, 0])
robot_loc_pixel = cords_2_pixel(robot_loc, pixel_center, real_center_dist, cam_height, user_height, inv_camera_orientation)
max_dodge_dist = .1
avoidance_dist = .15
Radius = .5
user_center_dist = ((cam_height - user_height) / cam_height) * real_center_dist
edge_percentage = (.5*user_center_dist) / Radius
real_center_dist_robot = ((cam_height - robot_height) / cam_height) * real_center_dist
cord_centers = torch.tensor([[-.5, -.5], [.5, .5]])
# print("**\n",edge_percentage*real_center_dist_user, "\n**")
# camera_matrix_640x360 = np.array([[354.71698103,0.0,325.02163159],[0.0,355.44339145,161.51298043],[0.0,0.0,1.0]])
# distortion_coeff_640x360 = np.array([[-3.52228685e-01, 1.55541160e-01,4.99708023e-05,-4.91499027e-05,-3.67726346e-02]])
# camera_matrix =np.array([[354.71698103,0.0,325.02163159],[0.0,355.44339145,161.51298043],[0.0,0.0,1.0]])
# distortion_coeff =np.array([[-3.52228685e-01, 1.55541160e-01,4.99708023e-05,-4.91499027e-05,-3.67726346e-02]])
# camera_matrix =  np.array([[363.49819993, 0.0, 183.27924979],[0.0, 363.58850066, 166.87756871],[0.0,0.0,1.0]])
# distortion_coeff = np.array([[-4.11894961e-01, 3.42717870e-01,-3.75730100e-04,1.67843721e-03, -2.15788453e-01]])
np.random.seed(42)


i = 0
dodge_time = 0
# run_time_dict = {"Un-Distortion":[], "Resize":[], "Color Detection":[],"Marking Pixels":[], "Converting Cords":[],"Kmeans":[],"Buffer":[],"Main Punch":[],"Slope":[], "Punch Vector Calc":[], "Avoidance":[], "Total End":[], "Output End":[]}
run_time_dict = {"Marking Pixels":[], "Converting Cords":[],"Kmeans":[],"Buffer":[],"Main Punch":[],"Slope":[], "Punch Vector Calc":[], "Engage Decision":[],"Perpendicular Calc":[],"Avoidance":[], "Total End":[], "Output End":[]}
save = False

result = cv.VideoWriter('Testrun.mp4',  cv.VideoWriter_fourcc('m', 'p', '4', 'v'), 60, (360,360)) 
st1 = time.time()
cam = WebcamVideoStream(1)
cam.start()

while True:
	# frame = cam.read()
	st = time.time()
	# frame = cv.undistort(frame, camera_matrix, distortion_coeff, None, camera_matrix)
	# frame = cv.remap(frame, mapx, mapy, cv.INTER_LINEAR)
	# run_time_dict["Un-Distortion"].append(time.time() - st)
	# frame = frame_resize(frame)
	# run_time_dict["Resize"].append(time.time() - st)

	# if not ret:
		# print("Can't receive frame (stream end?). Exiting ...")
		# break

	# Create a binary mask for the specified color
	# color_mask_gloves = cv.inRange(hsv_frame, lower_bound_gloves, upper_bound_gloves)
	# run_time_dict["Color Detection"].append(time.time() - st)

	# marked_pixel_coords = np.column_stack(np.where(color_mask_gloves > 0))


	marked_pixel_coords, frame = cam.punch_pixels()
	run_time_dict["Marking Pixels"].append(time.time()-st)
	marked_coords = pixel_2_cords(marked_pixel_coords.copy(), pixel_center, real_center_dist, cam_height, user_height, camera_orientation)
	run_time_dict["Converting Cords"].append(time.time()-st)
	cord_list, cord_centers = kmeans_gpu(marked_coords, 2, cord_centers)
	run_time_dict["Kmeans"].append(time.time() - st)
	# print("cord centers", cord_centers)
    
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

		if punch1_dist < punch2_dist:
			main_punch = centroid_buffer1
			minor_punch = centroid_buffer2
			main_punch_dist = punch1_dist
			prev_punch_dist = np.linalg.norm(centroid_buffer1[1] - robot_loc)
			main_centroid = cords_2_pixel(centroid1, pixel_center, real_center_dist, cam_height, user_height, inv_camera_orientation)
			minor_centroid = cords_2_pixel(centroid2, pixel_center, real_center_dist, cam_height, user_height, inv_camera_orientation)
		else:
			main_punch = centroid_buffer2
			minor_punch = centroid_buffer1
			main_punch_dist = punch2_dist
			prev_punch_dist = np.linalg.norm(centroid_buffer2[1] - robot_loc)
			main_centroid = cords_2_pixel(centroid2, pixel_center, real_center_dist, cam_height, user_height, inv_camera_orientation)
			minor_centroid = cords_2_pixel(centroid1, pixel_center, real_center_dist, cam_height, user_height, inv_camera_orientation)
		run_time_dict["Main Punch"].append(time.time() - st)

			


		vector_2frames = main_punch[0] - main_punch[1]
		norm_vector_2frames = np.linalg.norm(vector_2frames)
		hat_vector_2frames = vector_2frames / norm_vector_2frames
		run_time_dict["Punch Vector Calc"].append(time.time() - st)

		if norm_vector_2frames >= .04:
			dodge_time = time.time()
			punch_trajectory_line_slope = (main_punch[1][1] - main_punch[0][1]) / (main_punch[1][0] - main_punch[0][0])
			punch_trajectory_line_offset = main_punch[0][1] - punch_trajectory_line_slope * main_punch[0][0]
			punch_y_check = punch_trajectory_line_slope * robot_loc[0] + punch_trajectory_line_offset
			# dist_from_punch_traj = np.linalg.norm(np.array([robot_loc[0], punch_y_check]) - robot_loc)
			dist_from_punch_traj = np.abs(punch_y_check - robot_loc[1])
			run_time_dict["Slope"].append(time.time() - st)

			if dist_from_punch_traj <= avoidance_dist:
				run_time_dict["Engage Decision"].append(time.time() - st)
				perpendicular_v1 = np.array([hat_vector_2frames[1], -1*hat_vector_2frames[0]])
				perpendicular_v2 = np.array([-1*hat_vector_2frames[1], hat_vector_2frames[0]])
				punch_body_loc = (main_punch[0] + minor_punch[0]) / 2
				robot_2_body_v = punch_body_loc - robot_loc
				robot_2_body_v_hat = robot_2_body_v / np.linalg.norm(robot_2_body_v)
				run_time_dict["Perpendicular Calc"].append(time.time() - st)

				#checks that the robot isnt too clost to the edge
				if np.linalg.norm(robot_loc) >= edge_percentage*Radius:
				# if (np.abs(robot_loc[0]) >= edge_percentage*real_center_dist_user) or (np.abs(robot_loc[1]) >= edge_percentage*real_center_dist_user):
					print("Edge Dodge")
					if np.linalg.norm(perpendicular_v1 + robot_loc) < np.linalg.norm(perpendicular_v2 + robot_loc):
						vx = perpendicular_v1[0]
						vy = perpendicular_v1[1]
					else:
						vx = perpendicular_v2[0]
						vy = perpendicular_v2[1]
					center_vector = -1*robot_loc
					hat_center_vector = center_vector / np.linalg.norm(center_vector)
					hat_avoidance_vector = np.array([vx, vy])
					#moves it twards the center more
					hat_avoidance_vector = .5 * hat_center_vector + .5 * hat_avoidance_vector

					# if np.linalg.norm(perpendicular_v1 - robot_2_body_v_hat) < np.linalg.norm(perpendicular_v2 - robot_2_body_v_hat):

					avoidance_vector = np.abs(avoidance_dist - dist_from_punch_traj) * hat_avoidance_vector + (1.5 * avoidance_dist) * hat_avoidance_vector
					# else:
						# avoidance_vector = np.abs(avoidance_dist - dist_from_punch_traj) * hat_avoidance_vector + ( * avoidance_dist) * hat_avoidance_vector

					
				else:
					#approximate body location
					print("Center Dodge")
					# punch_body_loc = (main_punch[0] + minor_punch[0]) / 2
					# robot_2_body_v = punch_body_loc - robot_loc
					# robot_2_body_v_hat = robot_2_body_v / np.linalg.norm(robot_2_body_v)
					if np.linalg.norm(perpendicular_v1 - robot_2_body_v_hat) >=  np.linalg.norm(perpendicular_v2 - robot_2_body_v_hat):
						vx = perpendicular_v1[0]
						vy = perpendicular_v1[1]
					else:
						vx = perpendicular_v2[0]
						vy = perpendicular_v2[1]

					hat_avoidance_vector = np.array([vx, vy])
					avoidance_vector = np.abs(avoidance_dist - dist_from_punch_traj) * hat_avoidance_vector + (avoidance_dist) * hat_avoidance_vector
                        
				prev_robot_loc = robot_loc.copy()
				robot_loc = robot_loc + avoidance_vector
				run_time_dict["Avoidance"].append(time.time() - st)
				
		elif time.time() - dodge_time >= 1:
			prev_robot_loc = np.array([-10,-10])
			robot_loc = np.array([0, 0])


		run_time_dict["Total End"].append(time.time() - st)
		robot_loc_pixel = cords_2_pixel(robot_loc, pixel_center, real_center_dist, cam_height, user_height, inv_camera_orientation)

		cv.circle(frame, tuple(main_centroid[::-1]), 15, (0, 0, 255), -1)
		cv.circle(frame, tuple(minor_centroid[::-1]), 5, (0, 255, 0), -1)

		if list(prev_robot_loc) != [-10,-10]:
			prev_robot_loc_pixel =  cords_2_pixel(prev_robot_loc, pixel_center, real_center_dist, cam_height, user_height, inv_camera_orientation)
			cv.circle(frame, tuple(prev_robot_loc_pixel[::-1]), 25, (255, 255, 0), -1)
			cv.circle(frame, tuple(robot_loc_pixel[::-1]), 25, (255, 255, 255), -1)
			# print("Pixel Robot: ", robot_loc_pixel)
		else:
			cv.circle(frame, tuple(robot_loc_pixel[::-1]), 25, (0, 0, 0), -1)

				

	else:
		cord_centers = torch.tensor([[float('nan'), -.5], [.5, .5]])
		robot_loc = np.array([0, 0])
		robot_loc_pixel = cords_2_pixel(robot_loc, pixel_center, real_center_dist, cam_height, user_height, inv_camera_orientation)
		cv.circle(frame, tuple(robot_loc_pixel[::-1]), 25, (150, 150, 150), -1)

	i += 1
	result.write(frame)
	cv.imshow('Original Frame', frame)
	run_time_dict["Output End"].append(time.time() - st)
										
	if cv.waitKey(1) == ord('q'):
		cam.stop()
		break


print("fps:", i / (time.time() - st1))
for key in run_time_dict.keys():
	runtime_list = run_time_dict[key]
	print(key, ":", sum(runtime_list)/len(runtime_list))


result.release() 
# cap.release()
cv.destroyAllWindows()

