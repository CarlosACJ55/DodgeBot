from communication import codes
from communication.protocol import Protocol

protocol = Protocol()


def connection_test():
    # connect:before
    if protocol.connection.is_connected():
        print("connection_test [connect:before] failed")
        return False

    # connect:after
    protocol.connect()
    if not protocol.connection.is_connected():
        print("connection_test [connect:after] failed")
        return False

    # write
    if decode_msg(formatted) != message:
        print("connection_test [decode_msg] failed")

    # read
    if connection.is_connected():
        print("connection_test [is_connected:false] failed")
        return False

    # synchronize
    connection.re_connect()
    if not connection.serial.is_open():
        print("connection_test [re_connect] failed")
        return False

    # check_connection
    if not connection.is_connected():
        print("connection_test [is_connected:true] failed")
        return False

    # disconnect
    connection.send(message)
    if connection.receive() != message:
        print("connection_test [send and receive] failed")
        return False

    # go_ready
    connection.disconnect()
    if connection.serial.is_open:
        print("connection_test [disconnect] failed")
        return False
    return True


if __name__ == '__main__':
    print("Result of protocol_test():", protocol_test())
