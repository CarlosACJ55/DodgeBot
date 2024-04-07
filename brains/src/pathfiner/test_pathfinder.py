import threading
import cv2 as cv
import sys
import numpy as np
import os
# from src.communication import codes
# from game.state import Phase, State
# from pathfiner.pathfinder import Pathfinder
import time
SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
sys.path.append(os.path.dirname(SCRIPT_DIR))
# from src.game.state import Phase, State
# import src.pathfiner
from pathfinder import Pathfinder
# while True:
# result = cv.VideoWriter('Testrun.mp4',  cv.VideoWriter_fourcc('m', 'p', '4', 'v'), 60, (360,360)) 
pf = Pathfinder(1.38)
# last_punch = time.time()
while True:
    dodge_path_angles = pf.detect_punch()
    # cv.imshow("Original Frame", pf.cam.frame)
    
    if dodge_path_angles is not None:
        if np.isnan(dodge_path_angles).any() == True:
            print("**************NaN***************\n"*4)
            print(pf.bot_pos)
            print("**************NaN***************\n"*4)
            # print(pf.)
        print(f" bot pos {pf.bot_pos}, dodge angle{dodge_path_angles}")
    cv.imshow("Original Frame", pf.cam.frame)
    # result.write(pf.cam.frame)
  
        
    if cv.waitKey(1) == ord('q'):
        pf.cam.stop_stream()
        print(sum(pf.run_time_dict["Kmeans"]) / len(pf.run_time_dict["Kmeans"]))
        print(sum(pf.run_time_dict["Total End"][:-2]) / (len(pf.run_time_dict["Total End"])-2))
        print(sum(pf.run_time_dict["Avoidance"][:-2]) / (len(pf.run_time_dict["Avoidance"])-2))
        # time.sleep(3)
        
        break

# result.release() 
# time.sleep(1)