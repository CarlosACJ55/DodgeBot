from dataclasses import dataclass
from enum import Enum


class Phase(Enum):
    DISCONNECTED = "D"
    IDLE = "I"
    IN_GAME = "S"
    RESETTING = "R"


@dataclass
class State:
    phase = Phase.DISCONNECTED
    time = 180
    height = 180
