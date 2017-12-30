PATH = %PATH%;C:\Program Files (x86)\STMicroelectronics\st_toolset\stvp

cd ..
configuration_tool\windows_scripts\make -f Makefile_windows clean
configuration_tool\windows_scripts\make -f Makefile_windows

STVP_CmdLine -BoardName=ST-LINK -ProgMode=SWIM -Port=USB -Device=STM8S105x6 -FileProg=main.ihx -verbose -no_loop

exit
