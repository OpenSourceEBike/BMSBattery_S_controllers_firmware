PATH = %PATH%C:\STMicroelectronics\st_toolset\stvp

del main.hex
make clean
make
ren main.ihx main.hex

STVP_CmdLine -BoardName=ST-LINK -ProgMode=SWIM -Port=USB -Device=STM8S105x6 -FileProg=main.hex -verbose

exit