import serial

from communication import codes


def format_msg(msg):
    return msg + msg + codes.MSG_END


def decode_msg(msg):
    half_len = len(msg) // 2
    half_1 = msg[:half_len]
    half_2 = msg[half_len:-1]
    return half_1 if half_1 == half_2 else None


class Connection:
    def __init__(self,
                 port="COM3",
                 baud_rate=921600,
                 byte_size=serial.EIGHTBITS,
                 stop_bits=serial.STOPBITS_ONE,
                 time_out=0.1):
        self.port = port
        self.baud_rate = baud_rate
        self.byte_size = byte_size
        self.parity = serial.PARITY_NONE
        self.stop_bits = stop_bits
        self.time_out = time_out
        self.serial = serial.Serial()

    def is_connected(self):
        return self.serial.is_open

    def re_connect(self):
        if self.is_connected():
            self.disconnect()
        self.serial.port = self.port
        self.serial.baudrate = self.baud_rate
        self.serial.bytesize = self.byte_size
        self.serial.parity = self.parity
        self.serial.stopbits = self.stop_bits
        self.serial.timeout = self.time_out
        self.serial.open()

    def send(self, msg):
        self.serial.write(format_msg(msg))

    def receive(self):
        return decode_msg(self.serial.readline().decode("UTF-8"))

    def disconnect(self):
        self.serial.close()
