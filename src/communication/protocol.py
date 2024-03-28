
from communication import codes
from communication.connection import Connection
from communication.message import *

valid_message_types = {codes.COM: Command, codes.POS: Position, codes.ARM: Alarm}


class Protocol:
    connection = Connection()
    streaming = False

    def connect(self):
        self.connection.re_connect()

    def write(self, command):
        self.connection.send(command)

    def read(self):
        msg = self.connection.receive().split(',')
        code = msg.pop()
        if code not in valid_message_types:
            raise Exception("Invalid command code")
        return valid_message_types[code](msg)

    def synchronize(self):
        self.write(Command([codes.SYNC]))
        return isinstance(self.read(), Command)

    def check_connection(self):
        return self.connection.is_connected() and self.synchronize()

    def disconnect(self):
        self.write(Command([codes.RESET]))
        self.connection.disconnect()

    def go_ready(self):
        self.reset()
        self.write(Command([codes]))

    def reset(self):
        self.write(Command([codes.RESET]))
        msg = self.connection.receive().split(',')
        code = msg.pop()
        if code not in valid_message_types:
            raise Exception("Invalid command code")
        return valid_message_types[code](msg)

    def freeze(self):
        self.write(Command([codes.STOP]))
