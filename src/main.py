import tkinter as tk


def start_session():
    user_height = user_height_entry.get()
    game_duration = game_duration_entry.get()

    print("Starting session...")


def stop_session():
    print("Stopping session...")


if __name__ == '__main__':
    root = tk.Tk()
    root.title("PunchBot")

    # Title label
    title_label = tk.Label(root, text="PunchBot", font=("Helvetica", 16))
    title_label.pack()

    # Subtitle label
    subtitle_label = tk.Label(root, text="Ready for another session?", font=("Helvetica", 12))
    subtitle_label.pack()

    # User height input
    user_height_label = tk.Label(root, text="Enter user height:")
    user_height_label.pack()
    user_height_entry = tk.Entry(root)
    user_height_entry.pack()

    # Game duration input
    game_duration_label = tk.Label(root, text="Game duration(s):")
    game_duration_label.pack()
    game_duration_entry = tk.Entry(root)
    game_duration_entry.pack()

    # Buttons
    start_button = tk.Button(root, text="Start", bg="green", fg="white", command=start_session)
    start_button.config(activebackground="darkgreen", activeforeground="white")
    start_button.pack(pady=10)

    stop_button = tk.Button(root, text="Stop", bg="red", fg="white", command=stop_session)
    stop_button.config(activebackground="darkred", activeforeground="white")
    stop_button.pack(pady=10)

    # Run the main event loop
    root.mainloop()
