from src.game.state import Phase

# Command Codes
COM = '!'
STOP = 'E'
SYNC = Phase.IDLE.value
RESET = Phase.RESETTING.value
START = Phase.IN_GAME.value

# Position Codes
POS = 'X'
DIR_L = 'L'
DIR_R = 'R'

# Alarm Codes
ARM = 'A'
ALO_ON = '1'
ALO_OFF = '0'

# Formatting
MSG_SEP = ','
CHK_SEP = '#'
MSG_END = '\n'

# Limits
MAX_ATTEMPTS = 200
