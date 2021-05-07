# LAB7

OBDH program with simple housekeeping functionality and ACS PIL validation. The program reads the value of the internal temperature sensor in the STM32F407 MCU and displays the raw value (12-bit integer) on the debugger console using semi-hosting. Moreover, the program includes the ACS control of the UPMSat-2 micro-satellite, magneto-meter readings and magneto-torques actuations are interchange with a host computer through a serial line. The host computer executes the environment model of the controller with Simulink.

Source files in the `src/serial_ports` directory have been taken from the 
Ada Drivers Library examples and are redistributed under the term of the 
acompanying License (Copyright © 2015-2016, AdaCore).
