PATH = %PATH%;C:\Program Files (x86)\STMicroelectronics\st_toolset\stvp

cd configuration_tool\windows_scripts

STVP_CmdLine -BoardName=ST-LINK -ProgMode=SWIM -Port=USB -Device=STM8S105x6 -FileOption=optionbytes.hex -verbose -no_loop

exit
