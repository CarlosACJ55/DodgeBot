import threading
import time

from src.game.state import Phase, State
from src.pathfiner.pathfinder import Pathfinder


class Game:
    state = State()

    def __init__(self, protocol, gui):
        self.stm = protocol
        self.ui = gui
        self.frame = self.ui.menu_frame(self)

    def configure(self, height, time):
        self.state.height = height
        self.state.time = time
        if self.stm.transition(Phase.IDLE):
            self.state.phase = Phase.IDLE

    def reset(self):
        pos = self.stm.find()
        self.stm.move(-pos.x, -pos.y)

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
        pf = Pathfinder(self.state.height)
        last_punch = time.time()
        while self.state.phase == Phase.IN_GAME:
            dodge = pf.detect_punch()
            if dodge:
                self.stm.move(*dodge)
                last_punch = time.time()
            if time.time() - last_punch > 2:
                self.stm.reset()

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
