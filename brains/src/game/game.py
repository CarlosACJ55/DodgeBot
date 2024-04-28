import threading
import time

import cv2 as cv
import numpy as np

from src.communication.message import Alarm
from src.game.state import Phase, State
from src.pathfiner.pathfinder import Pathfinder

ENCODER_SCALER = 1
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

    def end(self):
        self.state.phase = Phase.IDLE
        # self.state.still = True
        time.sleep(.1)
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
        # pos = self.stm.find()
        # if pos.x or pos.y:
            # self.stm.power_off()
        if self.stm.transition(Phase.IDLE):
            self.state.phase = Phase.IDLE
        else:
            self.stm.disconnect()
        self.state.phase = Phase.DISCONNECT

    def countdown(self):
        print("countdown started")
        while self.state.time and self.state.phase == Phase.IN_GAME:
            self.frame.update_timer()
        print("called end")
        self.end()
        
            
    def move(self, x, y):
        # print("move staring!")
        self.stm.move(int(x*ENCODER_SCALER), int(y*ENCODER_SCALER))
        print("move staring!")
        self.state.still = False
        # print("move ending!")

    def start_dodging(self):
        print(self.state.height * 0.0254)
        pf = Pathfinder(self.state.height * 0.0254)  # cm to meters
        # initialize_time = time.time()
        
        # time.sleep(1)
        while len(pf.get_dodgebot_camera_location()) == 0:
            pass
        
        pf.bot_pos = pf.get_dodgebot_camera_location()
        dodge_angle, _ = pf.center_bot()
        
        # while abs(dodge_angle[0]) > 1 and abs(dodge_angle[1]) > 1:
        for _ in range(3):
            # while not self.state.still:
                # pass
            # pf.bot_pos = pf.get_dodgebot_camera_location()
            # dodge_angle, _ = pf.center_bot()
            time.sleep(.5)
            pf.bot_pos = pf.get_dodgebot_camera_location()
            dodge_angle, _ = pf.center_bot()
            print("Dodge angle", dodge_angle)
            self.move(dodge_angle[0], dodge_angle[1])
            
        pf.bot_pos[0] = 0.0
        pf.bot_pos[1] = 0.0
        # time.sleep(.05)
        while self.state.phase == Phase.IN_GAME:
            # user_input = input("select the amount of degrees to move: ")
            # user_input = user_input.split(",")
            # if len(user_input) != 2:
            #     user_input = input("select the amount of degrees to move: ")
            # else:
            #     print(int(user_input[0]), int(user_input[1]))
            #     self.move(user_input[0], user_input[1])
            
            # response = self.stm.read()
            # print("^")
            dodge_path_angles, dodge_path_cartesian = pf.detect_punch()
            frame = pf.cam.frame
            if dodge_path_angles is not None:
                if dodge_path_angles[0] != 0.0 or dodge_path_angles[1] != 0.0:
                    if np.isnan(dodge_path_angles).any():
                        print("**************NaN***************\n" * 4)
                        print(pf.bot_pos)
                        print("**************NaN***************\n" * 4)  # print(pf.)
                    else:
                        print(f" bot pos {pf.bot_pos}, dodge angle{dodge_path_angles}")
                        x, y = dodge_path_angles
                        #make sure to set the new angles to move 
                        # if ((time.time() - initialize_time) > 2) and (abs(x) >= .5 or abs(y) >= .5):
                        # if self.bot_pos 
                        new_pos = pf.bot_pos + dodge_path_cartesian
                        if new_pos[1] < -.3:
                            y = 0
                        self.move(x, y)
                        pf.bot_pos = new_pos
                    
            #checks for the live bot pos everytime
            # if self.state.still:
                # pf.bot_pos = pf.get_dodgebot_camera_location()
                # self.state.still = True
            # print("bot", pf.get_dodgebot_camera_location())  
            
            if np.all((pf.bot_pos < .001)):
                cv.circle(frame, tuple(pf.cords_2_pixel(pf.bot_pos)[::-1]), 25, (0, 0, 0), -1)
            else:
                cv.circle(frame, tuple(pf.cords_2_pixel(pf.bot_pos)[::-1]), 25, (255, 255, 255), -1)
                
            cv.imshow("Original Frame", frame)
            
            
            if cv.waitKey(1) == ord('q'):
                break
        pf.cam.stop_stream()
        
    # def listen(self):
    #     print("listen thread start")
    #     while self.state.time and self.state.phase == Phase.IN_GAME:
    #         #this is only a temp fix and still might not work
    #         # if not self.state.still:
    #         response = self.stm.receive()
    #         if isinstance(response, Alarm):
    #             if response.a == response.b == response.c == 5:
    #                 self.state.still = True
    #                 print('Motor queue empty!')
    #             else:
    #                 self.state.phase = Phase.RESET
    #     print("listen thread exit")
                
            
        
    def play(self):
        print("*")
        if self.stm.check_connection() and self.state.phase == Phase.IDLE:
            self.frame = self.ui.timer_frame(self)
            self.state.phase = Phase.IN_GAME
            # listen_thread = threading.Thread(target=self.listen)
            # listen_thread.start() #create thread
            if not self.stm.transition(Phase.IN_GAME):
                self.emergency_reset()
            # self.start_dodging()
            # time_thread = threading.Thread(target=self.countdown)
            # listen_thread = threading.Thread(target=self.listen)
            time_thread = threading.Thread(target=self.countdown)
            time_thread.start()
            # listen_thread.start()
            
            # print("started")
            self.start_dodging()
            # print("enede")
            # self.start_dodging()
            # listen_thread.join()
            time_thread.join()
            # listen_thread.join()
