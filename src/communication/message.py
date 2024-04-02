from abc import ABC

from communication import codes


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
        if len(strings) != 4:
            raise Exception('Invalid data for a Position Message')
        super().__init__(data)
        self.x_dir, self.x_pul, self.y_dir, self.y_pul = [int(s) for s in strings]
        self.code = codes.POS


class Alarm(Message):
    def __init__(self, data):
        if len(data) != 3 or not data.isdigit():
            raise Exception('Invalid amount of data for a Alarm Message')
        super().__init__(data)
        self.a, self.b, self.c = [int(c) for c in data]
        self.code = codes.ALO
