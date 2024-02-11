import time

import cv2 as cv
import numpy as np
import torch
from kmeans_pytorch import kmeans, kmeans_predict


def kmeans_gpu(punch_cords, num_gloves, prev_cluster_centers):
    if punch_cords.size > 0:
        punch_cords_torch = torch.from_numpy(punch_cords)
        try:
            if np.isnan(prev_cluster_centers).any():
                cluster_labels, punch_centers = kmeans(X=punch_cords_torch, num_clusters=num_gloves, device='cuda:0')
            elif len(prev_cluster_centers.shape) == 2:
                cluster_labels = kmeans_predict(punch_cords_torch, prev_cluster_centers, device='cuda:0')
            else:
                raise ValueError('kmeans_gpu - unimplemented case.')
            punch1_pixel = punch_cords[cluster_labels == 0]
            punch2_pixel = punch_cords[cluster_labels == 1]
            return ([punch1_pixel, punch2_pixel],
                    torch.Tensor([np.mean(punch1_pixel, axis=0), np.mean(punch2_pixel, axis=0)]))
        except (IndexError, ValueError):
            return [punch_cords], torch.from_numpy(prev_cluster_centers)
    return [], torch.tensor([[float('nan'), -.5], [.5, .5]])


if __name__ == '__main__':
    cap = cv.VideoCapture(1, cv.CAP_DSHOW)
    if not cap.isOpened():
        print("Cannot open camera")
        exit()
    change_res(640, 360)
    buffer_size = 3
    centroid_buffer1 = [np.zeros(2, dtype=float)] * buffer_size
    centroid_buffer2 = [np.zeros(2, dtype=float)] * buffer_size
    prev_robot_loc_pixel = cords_to_pixel(dist_cords=np.array([0, 0]), center=np.array([180, 180]), center_dist=1.06,
                                          height=1.35, cam_height=2, cam_orientation=np.array([-1, 1]))
    np.random.seed(42)
    camera_matrix = np.array([[354.71698103, 0.0, 325.02163159], [0.0, 355.44339145, 161.51298043], [0.0, 0.0, 1.0]])
    distortion_coeff = np.array([[-3.52228685e-01, 1.55541160e-01, 4.99708023e-05, -4.91499027e-05, -3.67726346e-02]])
    while cap.isOpened():
        ret, frame = cap.read()
        if not ret:
            print("Can't receive frame (stream end?). Exiting ...")
            break
        st = time.time()
        frame = cv.undistort(frame, camera_matrix, distortion_coeff, None, camera_matrix)
        print(time.time() - st)
        frame = frame_resize(frame)
        frame = calibration_circle(frame)
        cv.imshow('Original Frame', frame)
        if cv.waitKey(1) == ord('q'):
            break
    cap.release()
    cv.destroyAllWindows()
