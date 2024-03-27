import serial.tools.list_ports

from src.communication import codes


class Connection:
    def __init__(self, port="COM3", baud_rate=921600, timeout=0.1):
        self.port = port
        self.baud_rate = baud_rate
        self.timeout = timeout
        self.serial = serial.Serial()

    def is_connected(self):
        return self.serial.is_open

    def re_connect(self):
        if self.is_connected():
            self.disconnect()
        self.serial.baudrate = self.baud_rate
        self.serial.port = self.port
        self.serial.timeout = self.timeout
        self.serial.open()
        if self.serial.is_open:
            print("UART on {} connected successfully.".format(self.serial.port))

    def send(self, msg):
        doubled_msg = msg + codes.CHK_SEP + msg + codes.MSG_END
        self.serial.write(doubled_msg.encode())

    def receive(self):
        doubled_msg = self.serial.readline().decode("UTF-8").split(codes.CHK_SEP)
        if len(doubled_msg) != 2 or doubled_msg[0] != doubled_msg[1]:
            raise ConnectionError("Received corrupt message")
        return doubled_msg[0]

    def disconnect(self):
        self.serial.close()
        if not self.serial.is_open:
            print("UART on {} disconnected successfully.".format(self.serial.port))
