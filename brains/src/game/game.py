import threading

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
        if self.stm.synchronize():
            self.state.phase = Phase.IDLE

    def end(self):
        self.stm.reset()
        self.state.phase = Phase.IDLE
        self.frame = self.ui.menu_frame(self)

    def emergency_reset(self):
        if not self.stm.check_connection():
            self.stm.reconnect()
        self.state.phase = Phase.RESET
        if self.state.phase == Phase.IN_GAME:
            self.end()
        if self.stm.reset():
            self.state.phase = Phase.IDLE
        else:
            self.stm.power_off()
        self.stm.disconnect()
        self.state.phase = Phase.DISCONNECT

    def countdown(self):
        for self.state.time in reversed(range(self.state.time)):
            self.frame.update_timer()
        self.end()

    def start_dodging(self):
        computer = Pathfinder(self.state.height)
        while self.state.phase == Phase.IN_GAME:
            dodge_path = computer.detect_punch()
            if dodge_path is not None:
                self.stm.move_to(dodge_path)
            self.stm.reset()

    def play(self):
        if self.stm.check_connection() and self.state.phase == Phase.IDLE:
            self.frame = self.ui.timer_frame(self.state)
            time_thread = threading.Thread(target=self.countdown)
            time_thread.start()
            self.state.phase = Phase.IN_GAME
            self.start_dodging()
            time_thread.join()
            self.end()
