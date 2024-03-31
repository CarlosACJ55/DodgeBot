from tst.communication.connection import connection_test
from tst.communication.message import message_test
from tst.communication.protocol import protocol_test


def runtests():
    test_result = True
    test_result = test_result and message_test()
    test_result = test_result and connection_test()
    test_result = test_result and protocol_test()
    return test_result


if __name__ == "__main__":
    print("communication tests result: ", runtests())
