# ACS_PIL

MATLAB/Simulink code for Attitude Control System in a Processor-in-the-Loop configuration. 

To run the code, open `ACS_PIL.slx` from Simulink.

To generate C code for the PIL configuration, open `control.slx` from
Simulink and use the Embedded Coder toolbox.
The generated code is placed in the `control_ert_rtw` driectory.
This code must be linked with the Ada code in the `src` directory.
