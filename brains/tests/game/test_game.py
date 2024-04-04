from src.communication.protocol import Protocol
from src.game.game import Game
from src.game.state import Phase
from tests.game.mockgui import MockGUI, MockMenu


test_protocol = Protocol()
mock_gui = MockGUI()
game = Game(test_protocol, mock_gui)


def game_test():
    res = True

    # __init__
    if not (isinstance(game.frame, MockMenu)) or not (isinstance(game.ui.frame, MockMenu)):
        print("game_test [__init__] failed")
        res = False

    # configure
    game.configure(150, 150)
    if not game.state.time == game.state.height == 150 or game.state.phase != Phase.IDLE:
        print("game_test [configure] failed")
        res = False

    # reset:start
    game.reset()
    stm_position = game.stm.locate()
    if stm_position.x or stm_position.y:
        print("game_test [reset:start] failed")
        res = False

    #

    # reset:end
    game.reset()
    stm_position = game.stm.locate()
    if stm_position.x or stm_position.y:
        print("game_test [reset:end] failed")
        res = False
    return res


if __name__ == '__main__':
    print("Result of protocol_test():", game_test())
