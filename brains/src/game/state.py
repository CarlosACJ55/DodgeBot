from dataclasses import dataclass
from enum import Enum


class Phase(Enum):
    DISCONNECT = "D"
    IDLE = "I"
    IN_GAME = "S"
    RESET = "R"


@dataclass
class State:
    still = True
    phase = Phase.DISCONNECT
    time = 30
    height = 55
