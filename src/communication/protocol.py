from communication.connection import Connection
from communication.message import *

valid_message_types = {codes.CMD: Command, codes.POS: Position, codes.ALO: Alarm}


class Protocol:
    connection = Connection()
    streaming = False

    def connect(self):
        self.connection.reconnect()

    def write(self, command):
        self.connection.send(str(command))

    def read(self):
        msg = ""
        while not msg:
            msg = self.connection.receive()
        print("response:" + str(msg) + ".")
        return valid_message_types.get(msg[0], None)(msg[1:])

    def command(self, code):
        cmd = Command(code)
        self.write(cmd)
        res = self.read()
        return isinstance(res, Command) and res.data == code

    def check_connection(self):
        return self.connection.is_connected() and self.command(Command)

    def disconnect(self):
        self.write(Command(codes.RESET))
        self.connection.disconnect()

    def go_ready(self):
        self.reset()
        self.write(Command([codes]))

    def freeze(self):
        self.write(Command(codes.STOP))
