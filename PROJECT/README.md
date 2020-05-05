# Final laboratory project

Mockup of an OBDH system with telemetry and telecommand functionality. 

This directory contains two projects:

* `OBDH` is the on-board software, running on an STM32F4 board simulating a satellite on-boad computer (OBC).

   The OBDH program reads the value of housekeeping sensors in the STM32F407 MCU, and sends telemetry messages to a host computer through a serial line.

* `GS` is the ground station software, running on a PC with Windows/MacOS/GNU Linux OS.

   The GS program receives telemetry messages from the OBDH by means of a serial line connection, and sends telecommands to it through the same line.

   The current version of the user interface is purely textual and is written
   in Python.

See the [documentation folder](../docs) for detailed instructions.