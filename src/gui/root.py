import tkinter as tk

from src.gui.menu import Menu
from src.gui.timer import Timer


class Root:
    root_widget = tk.Tk()
    root_widget.title("PunchBot")
    root_widget.geometry("485x280")

    def __init__(self, protocol):
        self.protocol = protocol
        self.root_widget.protocol("MW_DELETE_WINDOW", self.close_window)

    def close_window(self):
        self.root_widget.destroy()
        self.protocol.connection.disconnect()
        self.protocol.connected = False

    def clear(self):
        for frame in self.root_widget.winfo_children():
            frame.destroy()

    def menu_frame(self, game):
        self.clear()
        return Menu(self.root_widget, game)

    def timer_frame(self, game_state):
        self.clear()
        return Timer(self.root_widget, game_state)

    def show(self):
        self.root_widget.mainloop()
