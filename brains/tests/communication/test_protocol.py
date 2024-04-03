from src.communication import codes
from src.communication.message import Command
from src.communication.protocol import Protocol

protocol = Protocol()


def protocol_test():  # STM POS MUST BE SET TO 0, AND STM MUST BE IN TRACKING MODE
    res = True

    # check_connection:false
    if protocol.check_connection():
        print("protocol_test [check_connection:false] failed")
        res = False

    # connect
    protocol.connect()
    if not protocol.connection.is_connected():
        print("protocol_test [connect] failed")
        res = False

    # check_connection:true
    if not protocol.check_connection():
        print("protocol_test [check_connection:true] failed")

    # write and read
    test_code = codes.SYNC
    test_message = Command(test_code)
    protocol.write(test_message)
    response = protocol.read()
    if not isinstance(response, Command) or response.data != test_code:
        print("protocol_test [write and read] failed")
        res = False

    # transition
    test_modes = [codes.START, codes.RESET, codes.DISC, codes.SYNC, codes.START]
    for mode in test_modes:
        if not protocol.transition(mode):
            print("protocol_test [commands:" + str(mode) + "] failed")
            res = False

    # move and locate
    test_moves = [(10, -10), (40, -40), (-10, 10), (-40, 39), (0, 1)]
    test_displacements = [(10, -10), (50, -50), (40, -40), (0, -1), (0, 0)]
    for move, result in zip(test_moves, test_displacements):
        protocol.move(*move)
        pos = protocol.locate()
        if pos.x != result[0] or pos.y != result[1]:
            print("protocol_test [move and locate] failed")
            res = False

    # disconnect
    protocol.disconnect()
    if protocol.check_connection():
        print("protocol_test [disconnect] failed")
        res = False

    return res


if __name__ == '__main__':
    print("Result of protocol_test():", protocol_test())
