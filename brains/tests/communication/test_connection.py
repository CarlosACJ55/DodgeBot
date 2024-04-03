from src.communication import codes
from src.communication.connection import Connection, decode_msg, format_msg

connection = Connection()


def connection_test():  # STM MUST BE IN ECHO MODE TO RUN THIS TEST
    res = True
    # format_msg
    message = "ABCD"
    formatted = format_msg(message)
    if formatted != message + codes.MSG_SEP + message + codes.MSG_END:
        print("connection_test [format_msg] failed")
        res = False

    # decode_msg
    if decode_msg(formatted + '\n') != message:
        print("connection_test [decode_msg] failed")

    # is_connected:false
    if connection.is_connected():
        print("connection_test [is_connected:false] failed")
        res = False

    # reconnect
    connection.reconnect()
    if not connection.serial.is_open:
        print("connection_test [reconnect] failed")
        res = False

    # is_connected:true
    if not connection.is_connected():
        print("connection_test [is_connected:true] failed")
        res = False

    # send and receive
    connection.send(message)
    if connection.receive() != message:
        print("connection_test [send and receive] failed")
        res = False

    # disconnect
    connection.disconnect()
    if connection.serial.is_open:
        print("connection_test [disconnect] failed")
        res = False
    return res


if __name__ == '__main__':
    print("Result of connection_test:", connection_test())
