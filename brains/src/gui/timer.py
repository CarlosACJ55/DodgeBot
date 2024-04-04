import tkinter as tk
import tkinter.constants as tkc
from tkinter import ttk


def format_time(seconds):
    return "{}:{}".format(*divmod(seconds, 60))


class Timer:
    def __init__(self, root, game):
        self.game = game
        # Static
        self.frame = tk.LabelFrame(root, text="Dashboard", padx=5, pady=5, bg="white", width=60)
        self.title = tk.Label(self.frame, text="Fight!", font=("Helvetica", 24), width=15)
        self.separator = ttk.Separator(self.frame, orient='vertical')
        # Dynamic
        self.time_lbl = tk.Label(self.frame, text=format_time(self.game.state.time), font=('Arial', 48))
        self.stop_btn = tk.Button(self.frame, command=game.end, text="STOP", width=40)
        # Layout
        root.geometry("800x120")
        self.frame.grid(row=0, column=0, padx=10, pady=10, sticky=tkc.EW)
        self.title.grid(row=0, column=0, columnspan=2, pady=5)
        self.separator.grid(row=0, column=1, rowspan=1, sticky=tkc.NS, padx=20)
        self.time_lbl.grid(row=0, column=2, rowspan=2, padx=20, sticky=tkc.NS)
        self.stop_btn.grid(row=1, column=0, columnspan=5, pady=10)

    def update_timer(self):
        self.frame.after(1000, lambda: self.time_lbl.config(text=format_time(self.game.state.time)))
        self.time_lbl.update()
