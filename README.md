Please read the project documentation here: https://opensourceebikefirmware.bitbucket.io/

this branch adds support for bottom bracket torque sensors to make motor power dependent on human power and functions for legal use in germany
Parameters for legality are defined in setpoint.h
changes to original code:
makefile modified for use with windows
counter for SPEED and PAS added to motor.c
includes PAS, SPEED and update_setpoint added
main.c modified
factor for right range of setpoint not determined yet
not tested in hardware yet 
no #ifdef used to switch from throttle to torque sensor yet
