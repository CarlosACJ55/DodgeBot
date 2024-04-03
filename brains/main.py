from src.communication.protocol import Protocol
from src.game.game import Game
from src.gui.gui import GUI

if __name__ == "__main__":
    stm = Protocol()
    ui = GUI(stm)
    game = Game(stm, ui)
    ui.show()
