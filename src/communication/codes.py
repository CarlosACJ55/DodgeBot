from game.state import Phase

# Command Codes
CMD = '!'
SYNC = Phase.IDLE.value
RESET = Phase.RESETTING.value
START = Phase.IN_GAME.value
STOP = 'E'

# Position Codes
POS = 'X'
DIR_L = 'L'
DIR_R = 'R'

# Alarm Codes
ALO = 'A'

# Formatting
DATA_SEP = ','
MSG_SEP = '#'
MSG_END = ';'

# Limits
MAX_ATTEMPTS = 200
