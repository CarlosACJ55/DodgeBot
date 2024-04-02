from communication.connection import Connection
from communication.message import *

msg_types = {codes.SHF: Command, codes.POS: Position, codes.ALO: Alarm}


class Protocol:
    connection = Connection()
    streaming = False

    def check_connection(self):
        return self.connection.is_connected()

    def connect(self):
        self.connection.reconnect()

    def write(self, command):
        self.connection.send(str(command))

    def read(self):
        msg = ""
        while not msg:
            msg = self.connection.receive()
        return msg_types.get(msg[0], None)(msg[1:])

    def transition(self, code):
        if code not in {codes.SYNC, codes.RESET, codes.START, codes.STOP}:
            raise ValueError("Incorrect code for a command")
        self.write(Command(code))
        res = self.read()
        return res.data == code if isinstance(res, Command) else res

    def move(self, x_dir, x_pulses, y_dir, y_pulses):
        self.write(Position(codes.DATA_SEP.join([str(x_dir), str(x_pulses), str(y_dir), str(y_pulses)])))

    def locate(self):
        res = self.read()
        if not isinstance(res, Position):
            raise ValueError("Alert received: " + str(res))
        return res

    def disconnect(self):
        self.write(Command(codes.RESET))
        self.connection.disconnect()
