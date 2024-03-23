from dataclasses import dataclass
from enum import Enum


class Phase(Enum):
    DISCONNECTED = "D"
    IDLE = "I"
    READY = "R"
    IN_GAME = "G"
    RESETTING = "S"


@dataclass
class State:
    phase = Phase.DISCONNECTED
    time = 180
    height = 180
