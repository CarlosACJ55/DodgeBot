import serial.tools.list_ports


class Connection:
    def __init__(self, port="COM3", baud_rate=921600, timeout=0.1):
        self.port = port
        self.baud_rate = baud_rate
        self.timeout = timeout
        self.serial_object = serial.Serial()

    def is_connected(self):
        return self.serial_object.is_open

    def re_connect(self):
        if self.is_connected():
            self.disconnect()
        self.serial_object.baudrate = self.baud_rate
        self.serial_object.port = self.port
        self.serial_object.timeout = self.timeout
        self.serial_object.open()
        if self.serial_object.is_open:
            print(f"UART on {self.serial_object.port} connected successfully.")

    def disconnect(self):
        self.serial_object.close()
        if not self.serial_object.is_open:
            print(f"UART on {self.serial_object.port} disconnected successfully.")
