import threading

from src.game.state import Phase, State
from src.prediction.sentry import Sentry


class Game:
    state = State()
    frame = None

    def __init__(self, protocol, gui):
        self.bot = protocol
        self.ui = gui
        self.frame = self.ui.launch_menu(self)

    def setup(self):
        if self.bot.synchronize():
            self.state.phase = Phase.IDLE
            if self.bot.go_ready():
                self.state.phase = Phase.READY
                return True
        return False

    def end(self):
        self.bot.reset()
        self.state.phase = Phase.IDLE
        self.frame = self.ui.launch_timer(self)

    def emergency_reset(self):
        if not self.bot.check_connection():
            self.bot.reconnect()
        self.state.phase = Phase.RESETTING
        if self.state.phase == Phase.IN_GAME:
            self.end()
        if self.bot.reset():
            self.state.phase = Phase.IDLE
        else:
            self.bot.power_off()
        self.bot.disconnect()
        self.state.phase = Phase.DISCONNECTED

    def countdown(self):
        for self.state.time in reversed(range(self.state.time)):
            self.frame.update_timer()
        self.end()

    def start_dodging(self):
        computer = Sentry(self.state.height)
        while self.state.phase == Phase.IN_GAME:
            dodge_path = computer.detect_punch()
            if dodge_path is not None:
                self.bot.move_to(dodge_path)
            self.bot.reset()

    def play(self):
        if self.bot.check_connection() and self.bot.in_sync and self.state.phase == Phase.READY:
            self.frame = self.ui.launch_timer(self.state)
            time_thread = threading.Thread(target=self.countdown)
            time_thread.start()
            self.state.phase = Phase.IN_GAME
            self.start_dodging()
            time_thread.join()
            self.end()
