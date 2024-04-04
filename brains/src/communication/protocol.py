from src.communication import codes
from src.communication.connection import Connection
from src.communication.message import Alarm, Command, Position

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
        if code not in {codes.SYNC, codes.RESET, codes.START, codes.DISC}:
            raise ValueError("Incorrect code for a command")
        self.write(Command(code))
        res = self.read()
        return res.data == code if isinstance(res, Command) else res

    def find(self):
        self.write(Command(codes.FIND))
        return self.locate()

    def move(self, x, y):
        self.write(Position(str(x) + codes.DATA_SEP + str(y)))

    def locate(self):
        res = self.read()
        if not isinstance(res, Position):
            raise ValueError("Alert received: " + str(res))
        return res

    def disconnect(self):
        self.write(Command(codes.RESET))
        self.connection.disconnect()
