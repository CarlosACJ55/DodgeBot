from abc import ABC

from src.communication import codes


class Message(ABC):
    def __init__(self, data):
        self.code = None
        self.data = data

    def __str__(self):
        return self.code + self.data


class Command(Message):
    def __init__(self, cmd):
        if len(cmd) != 1:
            raise Exception('Invalid amount of data for a Command Message')
        super().__init__(cmd)
        self.code = codes.SHF


class Position(Message):
    def __init__(self, data):
        strings = data.split(codes.DATA_SEP)
        if len(strings) != 2:
            raise Exception('Invalid data for a Position Message')
        super().__init__(data)
        self.code = codes.POS
        self.x, self.y = int(strings[0]), int(strings[1])


class Alarm(Message):
    def __init__(self, data):
        if len(data) != 3 or not data.isdigit():
            raise Exception('Invalid amount of data for a Alarm Message')
        super().__init__(data)
        self.code = codes.ALO
        self.a, self.b, self.c = [int(c) for c in data]
