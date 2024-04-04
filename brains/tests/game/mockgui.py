class MockMenu:
    pass


class MockTimer:
    def __init__(self, state):
        self.game_state = state
        self.time = state.time

    def update_timer(self):
        self.time = self.game_state.time


class MockGUI:
    def __init__(self):
        self.frame = None

    def menu_frame(self):
        self.frame = MockMenu()
        return self.frame

    def timer_frame(self, state):
        self.frame = MockTimer(state)
        return self.frame
