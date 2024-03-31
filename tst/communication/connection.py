from communication import codes
from communication.connection import Connection, decode_msg, format_msg


connection = Connection()


def connection_test():
    # format_msg
    message = "ABCD"
    formatted = format_msg(message)
    if formatted != message + message + codes.MSG_END:
        print("connection_test [format_msg] failed")
        return False

    # decode_msg
    if decode_msg(formatted) != message:
        print("connection_test [decode_msg] failed")

    # is_connected:true
    if connection.is_connected():
        print("connection_test [is_connected:false] failed")
        return False

    # re_connect
    connection.re_connect()
    if not connection.serial.is_open():
        print("connection_test [re_connect] failed")
        return False

    # is_connected
    if not connection.is_connected():
        print("connection_test [is_connected:true] failed")
        return False

    # send and receive (MUST CONFIGURE STM TO ECHO MESSAGE TO RUN THIS TEST)
    connection.send(message)
    if connection.receive() != message:
        print("connection_test [send and receive] failed")
        return False

    # disconnect
    connection.disconnect()
    if connection.serial.is_open:
        print("connection_test [disconnect] failed")
        return False
    return True


if __name__ == '__main__':
    print("Result of connection_test():", connection_test())
