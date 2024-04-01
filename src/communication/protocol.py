
from communication import codes
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
        msg = None
        while msg is None:
            msg = self.connection.receive()
        print("response:" + str(msg) + ".")
        return valid_message_types.get(msg[0], None)(msg[1:])

    def synchronize(self):
        self.write(Command(codes.SYNC))
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