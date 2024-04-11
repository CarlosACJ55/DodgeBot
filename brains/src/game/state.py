from dataclasses import dataclass
from enum import Enum


class Phase(Enum):
    DISCONNECT = "D"
    IDLE = "I"
    IN_GAME = "S"
    RESET = "R"


@dataclass
class State:
    phase = Phase.DISCONNECT
    time = 3
    height = 140
