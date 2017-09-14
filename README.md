Please read the project documentation here: https://opensourceebikefirmware.bitbucket.io/

This branch adds support for bottom bracket torque sensors to make motor power dependent on human power and functions for legal use in germany.
Parameters for legality are defined in config.h.
You have to edit the path to your STVP installation,in the .bat files, if not installed directly in C:\, to use the Java-tool.

HOW TO BUILD

Windows: ???

Linux:
1. clean the previous built files: $ make -f Makefile_linux clean
2. build the firmware as main.bin and main.elf: $ make -f Makefile_linux
