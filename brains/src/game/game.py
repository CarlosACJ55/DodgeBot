import threading
import cv2 as cv
import time
import numpy as np
from src.game.state import Phase, State
from src.pathfiner.pathfinder import Pathfinder


class Game:
    state = State()

    def __init__(self, protocol, gui):
        self.stm = protocol
        self.ui = gui
        self.frame = self.ui.menu_frame(self)
        protocol.connect()

    def configure(self, height, time):
        self.state.height = height
        self.state.time = time
        if self.stm.transition(Phase.IDLE):
            self.state.phase = Phase.IDLE

    def reset(self):
        pos = self.stm.find()
        self.stm.move(-pos.x, -pos.y)
        
    def move_thread(self,x,y):
        print("move staring!")
        self.stm.move(int(float(x)), int(float(y)))
        print("move ending!")
    

    def end(self):
        self.reset()
        self.state.phase = Phase.IDLE
        if not self.stm.transition(Phase.IDLE):
            self.emergency_reset()
        self.frame = self.ui.menu_frame(self)

    def emergency_reset(self):
        if not self.stm.check_connection():
            self.stm.reconnect()
        self.state.phase = Phase.RESET
        if self.state.phase == Phase.IN_GAME:
            self.end()
        self.reset()
        pos = self.stm.find()
        if pos.x or pos.y:
            self.stm.power_off()
        if self.stm.transition(Phase.IDLE):
            self.state.phase = Phase.IDLE
        else:
            self.stm.disconnect()
        self.state.phase = Phase.DISCONNECT

    def countdown(self):
        for self.state.time in reversed(range(self.state.time)):
            self.frame.update_timer()

    def start_dodging(self):
        # print(self.state.height * (10**-2))
        pf = Pathfinder(self.state.height * (10**-2)) #cm to meters
        # last_punch = time.time()
        intialize_time = time.time()
        while self.state.phase == Phase.IN_GAME:
            # cv.imshow("Original Frame", pf.cam.frame)
            dodge_path_angles = pf.detect_punch()
            
            # print(f"game.py dodge path angles{dodge_path_angles}")
            # print(dodge_path_angles)
            if dodge_path_angles is not None:
                # self.stm.move_to(dodge_path)
                # computer.bot_pos = computer.bot_pos + dodge_path
                if np.isnan(dodge_path_angles).any() == True:
                    print("**************NaN***************\n"*4)
                    print(pf.bot_pos)
                    print("**************NaN***************\n"*4)
                    # print(pf.)
                else:
                    print(f" bot pos {pf.bot_pos}, dodge angle{dodge_path_angles}")
                    x, y = dodge_path_angles
                    if ((time.time() - intialize_time) > 2) and (abs(x) >= .5 or abs(y) >= .5):
                        self.move_thread(x,y)
                    # threading.Thread(target=self.move_thread, args=(x, y,)).start()
            cv.imshow("Original Frame", pf.cam.frame)
            
            if cv.waitKey(1) == ord('q'):
                pf.cam.stop_stream()
                print(sum(pf.run_time_dict["Kmeans"]) / len(pf.run_time_dict["Kmeans"]))
                print(sum(pf.run_time_dict["Total End"][:-2]) / (len(pf.run_time_dict["Total End"])-2))
                print(sum(pf.run_time_dict["Avoidance"][:-2]) / (len(pf.run_time_dict["Avoidance"])-2))
                break

            # self.stm.reset()
            # dodge = pf.detect_punch()
            # if dodge:
            #     self.stm.move(*dodge)
            #     last_punch = time.time()
            # if time.time() - last_punch > 2:
            #     self.stm.reset()

    def play(self):
        if self.stm.check_connection() and self.state.phase == Phase.IDLE:
            self.frame = self.ui.timer_frame(self)
            self.state.phase = Phase.IN_GAME
            time_thread = threading.Thread(target=self.countdown)
            time_thread.start()
            if not self.stm.transition(Phase.IN_GAME):
                self.emergency_reset()
            self.start_dodging()
            time_thread.join()
            self.end()
