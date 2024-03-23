import threading

from game.state import Phase, State


class Game:
    state = State()
    frame = None

    def __init__(self, protocol, gui):
        self.bot = protocol
        self.ui = gui
        self.frame = self.ui.launch_menu(self)

    def setup(self):
        if self.bot.synchronize():
            self.state = Phase.IDLE
            if self.bot.go_ready():
                self.state = Phase.READY
                return True
        return False

    def emergency_reset(self):
        if not self.bot.check_connection():
            self.bot.reconnect()
        self.state = Phase.RESETTING
        if self.state == Phase.IN_GAME:
            self.end()
        if self.bot.reset():
            self.state = Phase.IDLE
        else:
            self.bot.power_off()
        self.bot.disconnect()
        self.state = Phase.DISCONNECTED

    def end(self):
        self.bot.reset()
        self.state = Phase.IDLE
        self.frame = self.ui.launch_timer(self)

    def play(self):
        if self.bot.check_connection() and self.bot.in_sync and self.state == Phase.READY:
            self.frame = self.ui.launch_timer(self.state)
            time_thread = threading.Thread(target=self.countdown)
            time_thread.start()
            self.state = Phase.IN_GAME
            self.start_dodging()
            time_thread.join()
            self.stop_dodging()
            self.end()

    def countdown(self):
        for self.state.time in reversed(range(self.state.time)):
            self.frame.update_timer()
        self.end()
