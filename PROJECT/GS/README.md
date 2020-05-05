# OBDH

Full OBDH system with TC/TM functionality. 

The software reads the value of the internal temperature and voltage sensors in the STM32F407 MCU and stores raw value (12-bit integer) in a buffer. 

The system sends telemetry (TM) messages of various types to a ground station
through a serial line simulating a radio link. It can also receive 
telecommand (TC)  messages from the ground station through the serial line.

See the [documentation folder](../../docs) for detailed instructions.

Source files in the `src/serial_ports` directory have been taken from the 
Ada Drivers Library examples and are redistributed under the term of the 
acompanying License (Copyright © 2015-2016, AdaCore).

