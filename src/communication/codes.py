from game.state import Phase

# Transition
SHF = '!'
# Position
POS = 'X'
# Alarm Codes
ALO = 'A'

# Commands
SYNC = Phase.IDLE.value
RESET = Phase.RESETTING.value
START = Phase.IN_GAME.value
STOP = 'D'

# Formatting
DATA_SEP = ','
MSG_SEP = '#'
MSG_END = ';'

# Limits
MAX_ATTEMPTS = 200
