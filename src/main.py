from communication.connection import Connection
from communication.protocol import Protocol
from game.game import Game
from gui.root import Root

if __name__ == "__main__":
    stm = Protocol(Connection)
    game = Game(stm, Root(stm))
    game.load()
