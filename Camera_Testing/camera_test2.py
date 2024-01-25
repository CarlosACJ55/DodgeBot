import numpy as np
import cv2 as cv
from sklearn.cluster import KMeans
import time

def change_res(width, height):
    cap.set(3, width)
    cap.set(4, height)

# Define the number of clusters (k)
k = 2

st = time.time()

cap = cv.VideoCapture(1,cv.CAP_DSHOW)

if not cap.isOpened():
    print("Cannot open camera")
    exit()

# Add a delay before starting the loop

change_res(640, 360)

while cap.isOpened():
    ret, frame = cap.read()

    if not ret:
        print("Can't receive frame (stream end?). Exiting ...")
        break

    # Flatten the frame into a list of pixels
    pixels = frame.reshape((-1, 3))

    # Convert the pixel values to float32 for k-means
    pixels = np.float32(pixels)

    # Define criteria and apply kmeans()
    criteria = (cv.TERM_CRITERIA_EPS + cv.TERM_CRITERIA_MAX_ITER, 100, 0.2)
    _, labels, centers = cv.kmeans(pixels, k, None, criteria, 10, cv.KMEANS_RANDOM_CENTERS)

    # Convert back to 8-bit values
    centers = np.uint8(centers)

    # Map the labels to the centers
    segmented_frame = centers[labels.flatten()]

    # Reshape the segmented frame back to the original shape
    segmented_frame = segmented_frame.reshape(frame.shape)

    # Extract the red color region (assuming red is the dominant color)
    red_pixels = segmented_frame[:, :, 2]

    # Calculate the centroid (average position) of red pixels
    red_pixel_coords = np.column_stack(np.where(red_pixels > 0))

    if red_pixel_coords.size > 0:
        centroid = np.mean(red_pixel_coords, axis=0, dtype=int)

        # Draw a circle at the centroid
        cv.circle(frame, tuple(centroid[::-1]), 5, (0, 255, 0), -1)

    # Display the original frame
    cv.imshow('Original Frame with Centroid', frame)

    if cv.waitKey(1) == ord('q'):
        break

# Release the capture and close OpenCV windows
cap.release()
cv.destroyAllWindows()
