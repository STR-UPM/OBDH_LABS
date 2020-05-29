#! /usr/bin/env python3
#
# ground station for satellite obdh mockup
#
# this file is part of OBDH_LABS https://github...
#
# (c) 2020 Juan A. de la Puente <juan.de.la.puente@upm.es>
#
# BSD License
#

import serial
import threading
import os
from datetime import datetime, timezone

# serial line parameters

serial_port = '/dev/cu.usbserial-FTA5I24G'
baudrate = 115200
s = serial.Serial(serial_port,baudrate) # Open serial port

####################
# utility functions
####################

# current utc time
def time_of_day () :
	time   = datetime.now(timezone.utc)
	return time.strftime("%Y-%m-%d %X %Z")

# message timestamp
def timestamp (msg) :
	return msg.split('|')[0].strip()

# message type
def tm_type(msg) :
	m = msg.split('|')[1].strip()
	return m.split(' ')[0].strip()

# parameters of hello message
def hello_parameters (msg) :
	parameters = msg.split('|')[1].split(' ')[1].split(':')
	return parameters

# celsius temperature from adc reading
def temperature (adc_value) :
	# sensor parameters
	Vref   = 2.930  # experimental measurement
	V25    = 0.750
	Scale  = 0.010
	Offset = -1.0
	V = float(adc_value)*Vref/4096.0
	T = (V-V25)/Scale + 25.0 + Offset
	return T

# voltage from adc reqading
def voltage (adc_value) :
	Vref   = 2.930     # experimental measurement
	bridge_divisor = 2 # RM 13.11
	V = float(adc_value)*bridge_divisor*Vref/4096.0
	return V

# parameters of mode message
def mode_parameters (msg) :
	m = msg.split('|')[1].strip()
	mode = m.split(' ')[1].strip()
	return mode

# text of error message
def error_text (msg) :
	m = msg.split('|')[1].strip()
	error = m.split(' ')
	del error[0]
	return ' '.join(error)

# text of hk message
def hk_text (msg) :
	m = msg.split('|')[1].strip()
	hk_msg = m.split(' ')
	del hk_msg[0]
	return ' '.join(hk_msg)

# parameters of hk log message
def hk_parameters (msg) :
	parameters = msg.strip().split(':')
	return parameters

#############
# TM_Receive
#############

class TM_Receive (threading.Thread) :

	def run(self) :
		hk = False
		while 1:
			# get message
			message = s.readline().decode()
			message = message.replace('\r','') # remove return
			message = message.replace('\n','') # remove new line

			# HK log messages
			if hk and message[0] == ' ':
				parameters = hk_parameters(message)
				DATA_TS = parameters[0]
				OBC_T   = temperature(parameters[1])
				OBC_V   = voltage(parameters[2])
				line = " {dts:>50} {obct:2.2f} °C  {obcv:2.2f} V".\
						format(dts=DATA_TS, obct=OBC_T, obcv=OBC_V)
				print (line)
				continue
			else :
				hk = False

			# decode message header
			time = time_of_day()	
			TS = timestamp(message)
			TM = tm_type(message)
			line = "{utc:<} {ts:>} {tm:<}".format(utc=time, ts=TS, tm=TM)

			# decode TM message
			if TM == 'HELLO':
				parameters = hello_parameters(message)
				DATA_TS = parameters[0]
				OBC_T   = temperature(parameters[1])
				OBC_V   = voltage(parameters[2])
				line += " {dts:<} {obct:2.2f} °C  {obcv:2.2f} V".\
						format(dts=DATA_TS, obct=OBC_T, obcv=OBC_V)
			elif TM == 'MODE' :
				new_mode = mode_parameters(message)
				line += " {mode:<}".format(mode=new_mode)
			elif TM == 'ERROR' :
				error_msg = error_text(message)
				line += " {error:<}".format(error=error_msg)
			elif TM == 'HK' :
				hk = True
				hk_msg = hk_text(message)
				line += " {hk:<}".format(hk=hk_msg)

			print (line)


##########
# TC_Send
##########

class TC_Send (threading.Thread) :

	def run(self) :
		while 1 :
			# input command and send to OBC
			TC = input()
			TC += '\r\n'
			if 'exit' in TC :
				print ("EXIT GROUND STATION")
				os._exit(0)
			s.write(TC.encode('utf-8'))

#######
# main
#######

def main () :
	print ("OBDH GROUND STATION")

	# initialize serial line
	s.reset_input_buffer()                  # Delete any stale data
	s.reset_output_buffer()

	# start receiving thread
	receive = TM_Receive()
	receive.start()

	# start sending thread
	send = TC_Send()
	send.start()

if __name__ == '__main__':
    main()



