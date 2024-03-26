import serial.tools.list_ports


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
        self.msg.encode()

    def receive(self):
        double = self.serial.readline().decode().split('#')
        msg = double[0]
        if len(double) != 2 or msg != double[1]:
            raise ConnectionError("Received corrupt message")
        return msg

    def disconnect(self):
        self.serial.close()
        if not self.serial.is_open:
            print("UART on {} disconnected successfully.".format(self.serial.port))
