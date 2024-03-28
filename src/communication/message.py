from abc import ABC

from communication import codes


class Message(ABC):
    def __init__(self, data):
        self.data = data

    def __str__(self):
        return codes.MSG_SEP.join(self.data)


class Command(Message):
    def __init__(self, data):
        if len(data) != 1:
            raise Exception('Invalid amount of data for a Command Message')
        if not data[0].isdecimal():
            raise Exception('Invalid data for a Command Message')
        super().__init__(data)


class Position(Message):
    def __init__(self, data):
        if len(data) != 4:
            raise Exception('Invalid amount of data for a Position Message')
        for x in data:
            if not x.isdigit():
                raise Exception('Invalid data for a Position Message')
        super().__init__(data)
        self.m1_dir = data[0]
        self.m1_pul = data[1]
        self.m2_dir = data[2]
        self.m2_pul = data[3]


class Alarm(Message):
    def __init__(self, data):
        super().__init__(data)
        if len(data) != 3:
            raise Exception('Invalid amount of data for a Alarm Message')
        for x in data:
            if x not in {codes.ALO_ON, codes.ALO_OFF}:
                raise Exception('Invalid codes for an Alarm Message')
        super.__init__(data)
        self.a = data[0]
        self.b = data[1]
        self.c = data[2]
