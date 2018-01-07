PATH = %PATH%;C:\Program Files (x86)\STMicroelectronics\st_toolset\stvp

del main.hex
make -f Makefile_windows clean
make -f Makefile_windows

STVP_CmdLine -BoardName=ST-LINK -ProgMode=SWIM -Port=USB -Device=STM8S105x6 -FileProg=main.ihx -verbose -no_loop

exit
