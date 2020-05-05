# LAB6

OBDH program with real-time requirements. The program reads the value of the internal temperature sensor in the STM32F407 MCU and sends the raw value (12-bit integer) to a host computer through a serial line.

This version includes real-time attributes and priority assignments.

There are two projects in the `RT_Housekeeping` folder:

* `real_time_housekeeping` is the main real-time OBDH program.
* `wcet_meter` is an auxiliary tool that can be used to estimate the execution time of the real-time task and protected operation bodies.

Source files in the `src/serial_ports` directory have been taken from the 
Ada Drivers Library examples and are redistributed under the term of the 
acompanying License (Copyright © 2015-2016, AdaCore).

