from tst.communication.connection import connection_test
from tst.communication.protocol import protocol_test


def runtests():
    return connection_test() and protocol_test()


if __name__ == "__main__":
    print("communication tests result: ", runtests())
