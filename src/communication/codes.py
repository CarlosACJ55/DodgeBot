from src.game.state import Phase

# Command Codes
STATE_REQ = '?'
STATE_RES = '!'
RESET = Phase.RESETTING.value
START = Phase.IN_GAME.value
SYNC = Phase.IDLE.value
STOP = 'E'

# Position Codes
POS_REQ = 'M'
POS_RES = 'N'
DIR_L = 'L'
DIR_R = 'R'

# Alarm Codes
ALARM = 'A'
ALO_ON = '1'
ALO_OFF = '0'

# Formatting
MSG_SEP = ','
CHK_SEP = '#'
MSG_END = '\n'

# Variables
MAX_ATTEMPTS = 200
