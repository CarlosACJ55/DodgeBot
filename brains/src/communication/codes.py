# Transition
from game.state import Phase

SHF = '!'
# Position
POS = 'X'
# Alarm Codes
ALO = 'A'

# Commands
SYNC = Phase.IDLE.value
RESET = Phase.RESET.value
START = Phase.IN_GAME.value
DISC = Phase.DISCONNECT.value

# Formatting
DATA_SEP = ','
MSG_SEP = '#'
MSG_END = ';'

# Limits
MAX_ATTEMPTS = 200
