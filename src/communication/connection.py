import serial

from communication import codes


def format_msg(msg):
    return msg + codes.MSG_SEP + msg + codes.MSG_END


def decode_msg(msg):
    half_len = (len(msg) - 1) // 2
    half_1 = msg[:half_len - 1]
    half_2 = msg[half_len:-2]
    return half_1 if half_1 == half_2 else None


class Connection:
    def __init__(self,
                 port="COM5",
                 baud_rate=921600,
                 byte_size=serial.EIGHTBITS,
                 parity = serial.PARITY_NONE,
                 stop_bits=serial.STOPBITS_ONE,
                 timeout=0.1):
        self.port = port
        self.baud_rate = baud_rate
        self.byte_size = byte_size
        self.parity = parity
        self.stop_bits = stop_bits
        self.timeout = timeout
        self.serial = serial.Serial()

    def is_connected(self):
        return self.serial.is_open

    def reconnect(self):
        if self.is_connected():
            self.disconnect()
        self.serial.port = self.port
        self.serial.baudrate = self.baud_rate
        self.serial.bytesize = self.byte_size
        self.serial.parity = self.parity
        self.serial.stopbits = self.stop_bits
        self.serial.timeout = self.timeout
        self.serial.open()

    def send(self, msg):
        self.serial.write(format_msg(msg).encode("utf-8"))

    def receive(self):
        return decode_msg(self.serial.readline().decode("utf-8"))

    def disconnect(self):
        self.serial.close()
