import time

from src.communication.constants import *


def format_message(code):
    return "#{}#{}#".format(code, code)


class Protocol:
    in_sync = stream_data = False
    sync_channel = msg_len = msg_len_check = 0
    raw_msg = ""
    buffer = []
    processed_buffer = []
    x_data = []
    y_data = []

    def __init__(self, connection):
        self.connection = connection
        self.serial_obj = connection.serial_obj

    def get_raw_line(self):
        self.raw_msg = self.serial_obj.readline()

    def update_buffer(self):
        temp = self.raw_msg.decode("utf-8")
        if temp:
            self.buffer = temp.split("#")
            del self.buffer[0]
            if self.buffer[0] == "D":
                del self.buffer[0]
                del self.buffer[-1]
                self.msg_len = int(self.buffer[-1])
                del self.buffer[-1]
                self.msg_len_check = 0
                for item in self.buffer:
                    self.msg_len += len(item)

    def check_and_process_buffer(self):
        self.stream_data = False
        if self.sync_channel == len(self.buffer) and self.msg_len == self.msg_len_check:
            self.stream_data = True
            self.processed_buffer = [int(msg) for msg in self.buffer]

    def check_connection(self):
        self.in_sync = False
        for attempt in range(MAX_SYNC_ATTEMPTS):
            try:
                self.serial_obj.write(SYNC_REQUEST.encode())
                self.get_raw_line()
                self.update_buffer()
                response, channel = self.buffer[:2]
                if response == SYNC_RESPONSE:
                    self.in_sync = channel == self.sync_channel
                    self.sync_channel = channel
            except Exception as e:
                print(e)
            if attempt == MAX_SYNC_ATTEMPTS // 2:
                time.sleep(0.5)

    def synchronize(self):
        self.connection.re_connect()
        self.in_sync = False

    def disconnect(self):
        self.in_sync = False
        self.sync_channel = self.msg_len = self.msg_len_check = 0
        self.raw_msg = ""
        self.buffer = []
        self.processed_buffer = []
        self.connection.disconnect()

    def go_ready(self):
        if not self.in_sync:
            print("Failed to communicate: un-synchronized microcontroller.")
        self.serial_obj.write(READY_REQUEST.value.encode())
        self.get_raw_line()
        self.update_buffer()
        self.check_and_process_buffer()

    def reset(self):
        self.serial_obj.write(RESET_REQUEST.value.encode())
        return True

    def go_idle(self):
        self.serial_obj.write(IDLE_REQUEST.encode())

    def buildYdata(self):
        self.y_data = []
        for _ in range(self.sync_channel):
            self.y_data.append([])

    def clear_data(self):
        self.raw_msg = ""
        self.buffer = []
        self.y_data = []
        self.x_data = []
