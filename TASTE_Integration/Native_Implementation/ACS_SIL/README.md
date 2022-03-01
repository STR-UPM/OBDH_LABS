# ACS_SIL

MATLAB/Simulink code for Attitude Control System in a Software-in-the-Loop (SIL) configuration.
In particular, the communication between the environment simulated in SIL and the OBDH
is achieved by means of TCP/IP Sockets (port 5000).

To run the code, open `ACS_SIL.slx` from Simulink.

TASTE uses the `qgen` tool from Adacore to autogerate Ada code tanking the ACS model as an input.
The code generation process is done automatically by TASTE.
