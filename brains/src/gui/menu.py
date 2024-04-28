import threading
import tkinter as tk
import tkinter.constants as tkc
from tkinter import messagebox

from src.game.state import Phase


MAX_T = 600
MIN_T = 3
MAX_H = 300
MIN_H = 50


class Menu:
    def __init__(self, root, game):
        self.game = game
        self.height = game.state.height
        self.time = game.state.time
        # Static
        self.frame = tk.LabelFrame(root, text="Main Menu", padx=5, pady=5)
        self.title = tk.Label(self.frame, text="DodgeBot", font=("Helvetica", 16))
        self.subtitle = tk.Label(self.frame, text="Ready for another session?", font=("Helvetica", 12))
        self.height_lbl = tk.Label(self.frame, text="Player height (inches):")
        self.duration_lbl = tk.Label(self.frame, text="Game duration (s):")
        # Dynamic
        self.height_ent = tk.Entry(self.frame)
        self.height_ent.insert(0, str(self.height))
        self.height_ent.bind("<KeyRelease>", self.refresh_input)
        self.duration_ent = tk.Entry(self.frame)
        self.duration_ent.insert(0, str(self.time))
        self.duration_ent.bind("<KeyRelease>", self.refresh_input)
        self.setup_btn = tk.Button(self.frame, command=self.setup, text="Setup", width=10)
        self.start_btn = tk.Button(self.frame, command=lambda: threading.Thread(target=game.play).start(), text="Start", width=20)
        self.stop_btn = tk.Button(self.frame, command=game.emergency_reset, text="EMERGENCY_RESET", width=20)
        self.refresh_input(None)
        # Layout
        self.frame.grid(row=0, column=0, padx=10, pady=10)
        self.title.grid(row=0, column=0, columnspan=2, pady=5)
        self.subtitle.grid(row=1, column=0, columnspan=2, pady=5)
        self.height_lbl.grid(row=2, column=0, padx=5, pady=5, sticky=tkc.E)
        self.height_ent.grid(row=2, column=1, padx=5, pady=5, sticky=tkc.W)
        self.duration_lbl.grid(row=3, column=0, padx=5, pady=5, sticky=tkc.E)
        self.duration_ent.grid(row=3, column=1, padx=5, pady=5, sticky=tkc.W)
        self.setup_btn.grid(row=4, column=0, columnspan=2, pady=10)
        self.start_btn.grid(row=5, column=0, padx=5, pady=5)
        self.stop_btn.grid(row=5, column=1, padx=5, pady=5)

    def refresh_input(self, _):
        self.setup_btn["state"] = self.start_btn["state"] = tkc.DISABLED
        if self.height_ent.get().isdigit() and self.duration_ent.get().isdigit():
            self.height = int(self.height_ent.get())
            self.time = int(self.duration_ent.get())
            if MIN_H < self.height < MAX_H and MIN_T <= self.time <= MAX_T:
                self.setup_btn["state"] = tkc.ACTIVE

    def setup(self):
        self.start_btn["state"] = tkc.DISABLED
        self.game.configure(self.height, self.time)
        
        if self.game.state.phase == Phase.IDLE:
            self.start_btn["state"] = tkc.ACTIVE
        else:
            tk.messagebox.showinfo("Failed to setup the microcontroller.")
