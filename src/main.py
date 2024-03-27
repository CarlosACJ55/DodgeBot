from communication.protocol import Protocol
from game.game import Game
from gui.root import Root

if __name__ == "__main__":
    stm = Protocol()
    ui = Root(stm)
    game = Game(stm, ui)
    ui.show()
