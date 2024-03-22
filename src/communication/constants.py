from game.state import Phase

# Format
SEPARATOR = "#"
MESSAGE_END = "\n"

# Control messages
SYNC_REQUEST = "?"
SYNC_RESPONSE = "!"
START_REQUEST = Phase.IN_GAME.value
IDLE_REQUEST = Phase.IDLE.value
READY_REQUEST = Phase.READY.value
RESET_REQUEST = Phase.RESETTING.value

# Variables
MAX_SYNC_ATTEMPTS = 200
