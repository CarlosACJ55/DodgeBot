import numpy as np
import cv2 as cv
import time, os
# from sklearn.cluster import KMeans
import torch
from kmeans_pytorch import kmeans, kmeans_predict
# device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
def frame_resize(frame):
    shape = frame.shape
    low_col = int((shape[1] / 2) - (shape[0]/2))
    high_col = int((shape[1] / 2) + (shape[0]/2))
    return frame[:,low_col:high_col,:]

def check_borders(img, gray, criteria, boardDimensions):
    ret, corners = cv.findChessboardCorners(gray, boardDimensions, None)
    # If found, add object points, image points (after refining them)
    if ret == True:
        corners2 = cv.cornerSubPix(gray,corners, (3,3), (-1,-1), criteria)
        img = cv.drawChessboardCorners(img, boardDimensions, corners2, ret)
    
    return img, ret

chessboardSize = (8,6)
# termination criteria
criteria = (cv.TERM_CRITERIA_EPS + cv.TERM_CRITERIA_MAX_ITER, 30, 0.001)
## prepare object points, like (0,0,0), (1,0,0), (2,0,0) ....,(6,5,0)
objp = np.zeros((chessboardSize[0]*chessboardSize[1],3), np.float32)
objp[:,:2] = np.mgrid[0:chessboardSize[0],0:chessboardSize[1]].T.reshape(-1,2)
# Arrays to store object points and image points from all the images.
objpoints = [] # 3d point in real world space
imgpoints = [] # 2d points in image plane.
path = "./chessboard_640x360/"
images = os.listdir(path)

for fname in images:
    print(fname)
    img = cv.imread(path+fname)
    gray = cv.cvtColor(img, cv.COLOR_BGR2GRAY)
    
    # Find the chess board corners
    ret, corners = cv.findChessboardCorners(gray, chessboardSize, None)
    
    # If found, add object points, image points (after refining them)
    if ret == True:
        objpoints.append(objp)
        corners2 = cv.cornerSubPix(gray,corners, (11,11), (-1,-1), criteria)
        imgpoints.append(corners2)
        # Draw and display the corners
        cv.drawChessboardCorners(img, chessboardSize, corners2, ret)
        cv.imshow('img', img)
        cv.waitKey(500)
        # break
# objpoints.append(objp)
cv.destroyAllWindows()


projection_error, camera_matrix, distortion_coeff, rotation_vector, translation_vector = cv.calibrateCamera(objpoints, imgpoints, gray.shape[::-1], None, None)
w = 360
h = 360
new_camera_matrix, _= cv.getOptimalNewCameraMatrix(camera_matrix,distortion_coeff,(640,360),0,(640,360))
# test, _ = cv.Rodrigues(rotation_vector[0])


print(projection_error)
print(camera_matrix)
print(distortion_coeff)
print(rotation_vector)
print(translation_vector)

print(new_camera_matrix)
print("*")

cap = cv.VideoCapture(1,cv.CAP_DSHOW)
# cap = cv.VideoCapture(0,cv.CAP_V4L2)
if not cap.isOpened():
    print("Cannot open camera")
    exit()

i = 0
while cap.isOpened():
    ret, frame = cap.read()
    
    st = time.time()
    frame = cv.undistort(frame, camera_matrix, distortion_coeff, None, new_camera_matrix)
    
    frame = frame_resize(frame)
    print(time.time()-st)

    cv.imshow('Original Frame', frame)

    if cv.waitKey(1) == ord('q'):
        break

cap.release()
cv.destroyAllWindows()

# mean_error = 0

# for i in range(len(objpoints)):
#     imgpoints2, _ = cv.projectPoints(objpoints[i], rotation_vector[i], translation_vector[i], camera_matrix, distortion_coeff)
#     error = cv.norm(imgpoints[i],imgpoints2, cv.NORM_L2)/len(imgpoints2)
#     mean_error += error

# print("total error: ", mean_error/len(objpoints))


    



##image chessboard caputue code
##################################################################################################
# cap = cv.VideoCapture(1,cv.CAP_DSHOW)
# # cap = cv.VideoCapture(0,cv.CAP_V4L2)
# if not cap.isOpened():
#     print("Cannot open camera")
#     exit()

# i = 0
# while cap.isOpened():
#     ret, frame = cap.read()
#     # frame = frame_resize(frame)
#     gray = cv.cvtColor(frame, cv.COLOR_BGR2GRAY)
#     frame2 = frame.copy()

#     img, border_bool = check_borders(frame2, gray, criteria, chessboardSize)

#     if border_bool == True:
#         cv.imshow('Original Frame', img)
#         if cv.waitKey(1) == ord('s'):
#             cv.imwrite(f"chessboard_640x360_{i}.jpg", frame)

#         i+=1
#     else:
#         cv.imshow('Original Frame', frame)

#     if cv.waitKey(1) == ord('q'):
#         break

# cap.release()
# cv.destroyAllWindows()