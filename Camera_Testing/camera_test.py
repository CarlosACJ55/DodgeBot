import numpy as np
import cv2 as cv
import time
from sklearn.cluster import KMeans

def change_res(width, height):
    cap.set(3, width)
    cap.set(4, height)

def img_2_vector(img, color='color'):
    img_shape = img.shape
    rows = img_shape[0]
    cols = img_shape[1]
    if(len(img_shape) != 0):
        vector = img.reshape([rows*cols, len(img_shape)])
    else:
        vector = img.reshape([rows*cols, 1])
    
    return vector, [rows, cols]

def vector_2_image(vector, img_shape, num_colors):
    return vector.reshape([img_shape[0], img_shape[1], num_colors])

def frame_resize(frame):
    shape = frame.shape
    low_col = int((shape[1] / 2) - (shape[0]/2))

    high_col = int((shape[1] / 2) + (shape[0]/2))
    # print(low_col, ",", high_col)
    return frame[:,low_col:high_col,:]
   
def calibration_circle(frame):
    cv.circle(frame, (int(frame.shape[0]/2), int(frame.shape[1]/2)),1, (0, 255, 0), cv.FILLED)
    cv.circle(frame, (int(5), int(5)),1, (255, 0, 0), cv.FILLED)
    cv.circle(frame, (int(5), int(350)),1, (0, 0, 255), cv.FILLED)
    cv.circle(frame, (int(350), int(5)),1, (0, 255, 255), cv.FILLED)
    return frame

def pixel_2_cords(pixel_location,pixel_center_location, center_dist, camera_height, user_height, camera_orentation):
    real_ratio = user_height/camera_height
    real_center_dist = real_ratio*center_dist

    pixel_xy = pixel_center_location - pixel_location
    pixel_xy_ratio = pixel_xy / pixel_center_location
    real_dist_cords = pixel_xy_ratio*real_center_dist
    return camera_orentation*real_dist_cords

def cords_2_pixel(real_dist_cords, pixel_center_location, center_dist, camera_height, user_height, inv_camera_orientation):
    real_ratio = user_height / camera_height
    real_center_dist = real_ratio * center_dist

    orientated_cords = real_dist_cords * inv_camera_orientation
    pixel_xy_ratio = orientated_cords / real_center_dist
    pixel_xy = pixel_xy_ratio * pixel_center_location
    pixel_location = pixel_center_location - pixel_xy 

    return pixel_location.astype('uint16')

def kmeans(identified_punch_cords, num_gloves=2):
    if identified_punch_cords.size > 0:
        try:
            kmeans = KMeans(n_clusters=num_gloves)
            kmeans.fit(identified_punch_cords)

            cluster_labels = kmeans.labels_
            cluster_centers = kmeans.cluster_centers_

            punch1_pixel = identified_punch_cords[cluster_labels == 0]
            punch2_pixel = identified_punch_cords[cluster_labels == 1]
            punch_pixels = [punch1_pixel, punch2_pixel]
            return punch_pixels
        except ValueError as e:
            return [identified_punch_cords]
    else:
        return []

def update_buffer(centroid_buffer, new_centriod, buffer_index):
    centroid_buffer[buffer_index] = new_centriod
    buffer_index = (buffer_index + 1) % buffer_size
    
    return centroid_buffer, buffer_index

def perpendicular_vector(vector_buffer):
    avrg_vector = np.mean(vector_buffer, axis=0)

    # print(avrg_vector)

    a = -1*avrg_vector[0]
    b = -1*(avrg_vector[0] * a) / avrg_vector[1]

    return np.array([a,b])

st = time.time()
cap = cv.VideoCapture(1,cv.CAP_DSHOW)

if not cap.isOpened():
    print("Cannot open camera")
    exit()

change_res(640, 360)
pixel_center = np.array([360/2, 360/2], dtype=int)
real_center_dist = 1.06
cam_height = 2
user_height = 1.524
camera_orentation = np.array([-1,1])

buffer_size = 10
centroid_buffer1 = np.zeros((buffer_size, 2), dtype=float)
centroid_buffer2 = np.zeros((buffer_size, 2), dtype=float)
buffer_index1 = 0
buffer_index2 = 0



while cap.isOpened():
    ret, frame = cap.read()
    frame = frame_resize(frame)

    if not ret:
        print("Can't receive frame (stream end?). Exiting ...")
        break

    # Convert the frame to the HSV color space (better for color tracking)
    hsv_frame = cv.cvtColor(frame, cv.COLOR_BGR2HSV)

    # Define a range of colors similar to the target color in HSV
    #define the color
    # print(target_color[2] - 10)

    lower_bound_gloves = np.array([0, 100, 100])
    upper_bound_gloves = np.array([15, 255,255])
    lower_bound_bot = np.array([130, 100, 100])
    upper_bound_bot = np.array([160, 255,255])
    #for yellow target
    lower_bound_gloves = np.array([20, 100, 100])
    upper_bound_gloves = np.array([30, 255,255])

    # lower_bound_bot = np.array([130, 100, 100])
    # upper_bound_bot = np.array([160, 255,255])
    # Create a binary mask for the specified color
    color_mask_gloves = cv.inRange(hsv_frame, lower_bound_gloves, upper_bound_gloves) 
    color_mask_bot = cv.inRange(hsv_frame, lower_bound_bot, upper_bound_bot)

    # color_mask_bot = cv.inRange(hsv_frame, lower_bound_bot, upper_bound_bot)
    # color_mask = color_mask / 255
    result = cv.bitwise_and(frame, frame, mask=color_mask_gloves)
    # results = cv.bitwise_and(frame)

    # rgb_frame = cv.cvtColor(frame, cv.COLOR_BGR2RGB)

    # frame_shape = rgb_frame.shape
    # vectorized = rgb_frame.reshape((-1,3))

    # results = cv.bitwise_and(frame)

    # color_mask_3d = np.stack((color_mask,) * 3, axis=-1)

    # Find the coordinates of all marked color pixels in the mask
    #finds all the pixels where the condition is true
    #the returns a list of cordinates where its true
    marked_pixel_coords = np.column_stack(np.where(color_mask_gloves > 0))
    
    # cv.imshow('frame', marked_pixel_coords)
    # binary_frame = color_mask_3d * frame
    # binary_frame = np.logical_and(hsv_frame, color_mask_3d)
    # print(binary_frame.shape)

    cord_list = kmeans(marked_pixel_coords, 2)
    
    if len(cord_list) == 2:
        
        centroid1 = np.mean(cord_list[0], axis=0, dtype=int)
        centroid2 = np.mean(cord_list[1], axis=0, dtype=int)
        real_centroid1 = pixel_2_cords(centroid1, pixel_center, real_center_dist, cam_height, user_height, camera_orentation)
        real_centroid2 = pixel_2_cords(centroid2, pixel_center, real_center_dist, cam_height, user_height, camera_orentation)
        
        centroid_buffer1, buffer_index1 = update_buffer(centroid_buffer1, real_centroid1, buffer_index1)
        centroid_buffer2, buffer_index2 = update_buffer(centroid_buffer2, real_centroid2, buffer_index2)
        vector1 = np.diff(centroid_buffer1, axis=0)
        vector2 = np.diff(centroid_buffer2, axis=0)
        perpendicular_v = perpendicular_vector(vector1)
        perpendicular_hat = perpendicular_v / np.linalg.norm(perpendicular_v)
        
        perpendicular_v_25cm = perpendicular_hat*.25
        print(perpendicular_v_25cm)
        perpendicular_v_25cm_pixel = cords_2_pixel(perpendicular_v_25cm, pixel_center, real_center_dist, cam_height, user_height, camera_orentation)
        
        # print(vector1)

        cv.circle(frame, tuple(centroid1[::-1]), 5, (0, 0, 255), -1)
        cv.circle(frame, tuple(centroid2[::-1]), 5, (0, 255, 0), -1)
        cv.circle(frame, tuple(perpendicular_v_25cm_pixel[::-1]), 15, (255, 255, 255), -1)

    elif len(cord_list) == 1:

        centroid1 = np.mean(cord_list[0], axis=0, dtype=int)
        real_centroid1 = pixel_2_cords(centroid1, pixel_center, real_center_dist, cam_height, user_height, camera_orentation)
        centroid_buffer1, buffer_index1 = update_buffer(centroid_buffer1, real_centroid1, buffer_index1)
        vector1 = np.diff(centroid_buffer1, axis=0)
        perpendicular_v = perpendicular_vector(vector1)
        perpendicular_hat = perpendicular_v / np.linalg.norm(perpendicular_v)
        perpendicular_v_25cm = perpendicular_hat*.25
        print(perpendicular_v_25cm)
        perpendicular_v_25cm_pixel = cords_2_pixel(perpendicular_v_25cm, pixel_center, real_center_dist, cam_height, user_height, camera_orentation)
        # print(vector1)
        cv.circle(frame, tuple(centroid1[::-1]), 5, (0, 0, 255), -1)
        cv.circle(frame, tuple(perpendicular_v_25cm_pixel[::-1]), 15, (0, 255, 255), -1)

    
    else:
        cv.circle(frame, tuple(pixel_center[::-1]), 15, (255, 255, 0), -1)





    # Calculate the centroid (average position) of red pixels
    # if marked_pixel_coords.size > 0:
        # centroid = np.mean(marked_pixel_coords, axis=0, dtype=int)
        # print(pixel_2_cords(pixel_center, centroid, real_center_dist, cam_height, user_height, camera_orentation))

    #     # Draw a circle at the centroid
    #     cv.circle(frame, tuple(centroid[::-1]), 5, (0, 255, 0), -1)
        # cv.circle(frame, tuple(centroid[::-1]), 5, (0, 255, 0), -1)

    # Calculate the frame rate TODO FIX THIS
    # et = time.time() - st
    # fps = i / et

    # Draw FPS information on the frame
    # cv.putText(frame, f'FPS: {fps:.2f}', (10, 30), cv.FONT_HERSHEY_SIMPLEX, 1, (0, 255, 0), 2)

    # Display the original frame
    # print(binary_frame)
    #calibration circle
    frame = calibration_circle(frame)
    

    # bgr_binary_frame = cv.cvtColor(binary_frame, cv.COLOR_HSV2BGR)

    cv.imshow('Original Frame', frame)

    if cv.waitKey(1) == ord('q'):
        break

    # i += 1

# Release the capture and close OpenCV windows
cap.release()
cv.destroyAllWindows()