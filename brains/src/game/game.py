import threading
import time

import cv2 as cv
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

    def configure(self, h, t):
        self.state.height = h
        self.state.time = t
        if self.stm.transition(Phase.IDLE):
            self.state.phase = Phase.IDLE

    # def reset(self):
    #     pos = self.stm.find()
    #     self.stm.move(-pos.x, -pos.y)

    def end(self):
        # self.reset()
        
        self.state.phase = Phase.IDLE
        # time.sleep(1)
        
        if not self.stm.transition(Phase.IDLE):
            self.emergency_reset()
        self.frame = self.ui.menu_frame(self)

    def emergency_reset(self):
        if not self.stm.check_connection():
            self.stm.reconnect()
        self.state.phase = Phase.RESET
        if self.state.phase == Phase.IN_GAME:
            self.end()
        # self.reset()
        pos = self.stm.find()
        if pos.x or pos.y:
            self.stm.power_off()
        if self.stm.transition(Phase.IDLE):
            self.state.phase = Phase.IDLE
        else:
            self.stm.disconnect()
        self.state.phase = Phase.DISCONNECT

    def countdown(self):
        while self.state.time and self.state.phase == Phase.IN_GAME:
            self.frame.update_timer()
        print("called end")
        self.end()

    def move_thread(self, x, y):
        print("move staring!")
        self.stm.move(int(round(float(x))), int(round(float(y))))
        print("move ending!")

    def start_dodging(self):
        pf = Pathfinder(self.state.height * (10 ** -2))  # cm to meters
        initialize_time = time.time()
        time.sleep(1)
        while self.state.phase == Phase.IN_GAME:
            dodge_path_angles = pf.detect_punch()
            if dodge_path_angles is not None:
                if np.isnan(dodge_path_angles).any():
                    print("**************NaN***************\n" * 4)
                    print(pf.bot_pos)
                    print("**************NaN***************\n" * 4)  # print(pf.)
                else:
                    print(f" bot pos {pf.bot_pos}, dodge angle{dodge_path_angles}")
                    x, y = dodge_path_angles
                    #make sure to set the new angles to move 
                    if ((time.time() - initialize_time) > 2) and (abs(x) >= .5 or abs(y) >= .5):
                        self.move_thread(x, y)
            print("bot", pf.get_dodgebot_camera_location())  
            cv.imshow("Original Frame", pf.cam.frame)
            
            if cv.waitKey(1) == ord('q'):
                break
        pf.cam.stop_stream()
        
        
        
        
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
