import serial.tools.list_ports


class Connection:
    def __init__(self, port="COM3", baud_rate=921600, timeout=0.1):
        self.port = port
        self.baud_rate = baud_rate
        self.timeout = timeout
        self.serial_obj = serial.Serial()

    def is_connected(self):
        return self.serial_obj.is_open

    def re_connect(self):
        if self.is_connected():
            self.disconnect()
        self.serial_obj.baudrate = self.baud_rate
        self.serial_obj.port = self.port
        self.serial_obj.timeout = self.timeout
        self.serial_obj.open()
        if self.serial_obj.is_open:
            print("UART on {} connected successfully.".format(self.serial_obj.port))

    def disconnect(self):
        self.serial_obj.close()
        if not self.serial_obj.is_open:
            print("UART on {} disconnected successfully.".format(self.serial_obj.port))
