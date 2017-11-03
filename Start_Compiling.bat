PATH = %PATH%C:\st_toolset\stvp;C:\SDCC\bin;

del main.hex
make -f Makefile_windows clean
make -f Makefile_windows
ren main.ihx main.hex

STVP_CmdLine -BoardName=ST-LINK -ProgMode=SWIM -Port=USB -Device=STM8S105x6 -FileProg=main.hex -verbose -no_loop

exit
