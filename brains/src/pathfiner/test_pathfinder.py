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
pf = Pathfinder(1.38)
# last_punch = time.time()
while True:
    dodge_path_angles = pf.detect_punch()
    cv.imshow("Original Frame", pf.cam.frame)
    
    if dodge_path_angles is not None:
        if np.isnan(dodge_path_angles).any() == True:
            print(pf.bot_pos)
            # print(pf.)
        print("test ", dodge_path_angles)
        
    if cv.waitKey(1) == ord('q'):
        pf.cam.stop_stream()
        print(sum(pf.run_time_dict["Kmeans"]) / len(pf.run_time_dict["Kmeans"]))
        print(sum(pf.run_time_dict["Total End"]) / len(pf.run_time_dict["Total End"]))
        # time.sleep(3)
        
        break
    
# time.sleep(1)