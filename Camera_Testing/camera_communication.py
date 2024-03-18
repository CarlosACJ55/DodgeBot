import serial
#python -m serial.tools.list_ports ====> gets the ports available

ser = serial.Serial("COM3", 115200)
ser.write(b"Test")
received_data = ser.readline()
print("recived: ", received_data)
ser.close()