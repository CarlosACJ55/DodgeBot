from abc import ABC, abstractmethod

from src.communication import codes


def transmission_check_format(msg):
    return msg + codes.CHK_SEP + msg + codes.MSG_END


class Message(ABC):
    def __init__(self, msg_type):
        self.type = msg_type

    @abstractmethod
    def __str__(self):
        pass


class Command(Message):
    def __init__(self, msg_type, control_code):
        if msg_type not in (codes.STATE_REQ, codes.STATE_RES):
            raise Exception('Invalid message type for a Command')
        super().__init__(msg_type)
        self.code = control_code

    def __str__(self):
        return transmission_check_format(self.type + codes.MSG_SEP + self.code)


class Position(Message):
    def __init__(self, msg_type, motor1_dir, m1_num_pulses, motor2_dir, m2_num_pulses):
        if msg_type not in (codes.POS_REQ, codes.POS_RES):
            raise Exception('Invalid message type for a Command')
        super().__init__(msg_type)
        self.m1_dir = motor1_dir
        self.m1_pul = m1_num_pulses
        self.m2_dir = motor2_dir
        self.m2_pul = m2_num_pulses

    def __str__(self):
        msg = codes.MSG_SEP.join((self.type, self.m1_dir, self.m1_pul, self.m2_dir, self.m2_pul))
        return transmission_check_format(msg)


class Alarm(Message):
    def __init__(self, alo_a, alo_b, alo_c):
        super().__init__(codes.ALARM)
        if any(x not in {codes.ALO_ON, codes.ALO_OFF} for x in (alo_a, alo_b, alo_c)):
            raise Exception('Invalid codes for an Alarm')
        self.a = alo_a
        self.b = alo_b
        self.c = alo_c

    def __str__(self):
        msg = codes.MSG_SEP.join((self.type, self.a, self.b, self.c))
        return transmission_check_format(msg)
