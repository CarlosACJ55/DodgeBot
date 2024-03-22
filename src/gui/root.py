import tkinter as tk

from gui.menu import Menu
from gui.timer import Timer


class Root:
    root_widget = tk.Tk()
    root_widget.title("PunchBot")
    root_widget.geometry("485x280")

    def __init__(self, protocol):
        self.protocol = protocol
        self.root_widget.protocol("MW_DELETE_WINDOW", self.close_window)
        self.timer_view = Timer(self.root_widget)

    def run(self):
        self.root_widget.mainloop()

    def clear(self):
        for frame in self.root_widget.winfo_children():
            frame.destroy()

    def launch_menu(self, game):
        self.clear()
        return Menu(self.root_widget, game)

    def launch_timer(self, game_state):
        self.clear()
        return Timer(self.root_widget, game_state)

    def close_window(self):
        self.root_widget.destroy()
        self.protocol.connection.disconnect()
        self.protocol.in_sync = False
