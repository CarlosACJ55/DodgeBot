from communication.message import Command
from communication import codes
from communication.protocol import Protocol

protocol = Protocol()


def protocol_test():
    res = True

    # connect:false
    if protocol.connection.is_connected():
        print("protocol_test [connect:false] failed")
        res = False

    # connect:true
    protocol.connect()
    if not protocol.connection.is_connected():
        print("protocol_test [connect:true] failed")
        res = False

    # write and read
    test_code = codes.SYNC
    test_message = Command(test_code)
    protocol.write(test_message)
    response = protocol.read()
    if not isinstance(response, Command) or response.data != test_code:
        print("protocol_test [write and read] failed")
        res = False

    # command
    commands = [codes.SYNC, codes.START, codes.RESET, codes.STOP]
    for command in commands:
        if not protocol.command(command):
            print("protocol_test [commands:" + str(command) + "] failed")
            res = False

    # # write and read:positions
    # messages = [Position(codes.SYNC), Position(codes.START), Position(codes.RESET), Position(codes.STOP)]
    # for m in messages:
    #     protocol.write(m)
    #     if protocol.read()
    #     print("protocol_test [decode_msg] failed")
    #     res = False

    # # write and read:alarms (MUST CONFIGURE STM TO ECHO MESSAGE TO RUN THIS TEST)
    # messages = [Command(codes.SYNC), Command(codes.START), Command(codes.RESET), Command(codes.STOP)]
    # for m in messages:
    #     protocol.write(m)
    #     if protocol.read()
    #     print("protocol_test [decode_msg] failed")
    #     res = False

    # # check_connection
    # if not connection.is_connected():
    #     print("protocol_test [is_connected:true] failed")
    #     res = False

    # # disconnect
    # connection.send(message)
    # if connection.receive() != message:
    #     print("protocol_test [send and receive] failed")
    #     res = False

    # # go_ready
    # connection.disconnect()
    # if connection.serial.is_open:
    #     print("protocol_test [disconnect] failed")
    #     res = False
    return res


if __name__ == '__main__':
    print("Result of protocol_test(): ", protocol_test())
