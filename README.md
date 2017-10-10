Please read the project documentation here: https://opensourceebikefirmware.bitbucket.io/

This branch adds support for a Kingmeter J-LCD Display. 

Many thanks to the team of the Forumscontroller, I took the main functions from there!

https://github.com/jenkie/Arduino-Pedelec-Controller

You have to edit the path to your STVP installation in the .bat files, if not installed directly in C:\, to use the Java-tool.

HOW TO BUILD

Windows: 

1. Just double click on "Start_Compiling.bat" 
2. or hit "Run" Button on Eclipse 
3. or hit "Write Configuration" Button on the OSEC Parameter Configurator

Linux:
1. clean the previous built files: $ make -f Makefile_linux clean
2. build the firmware as main.bin and main.elf: $ make -f Makefile_linux
