# Important

Caution! this is not a professional project. Anything you do with this firmware is at your own risk. In any case, use a quick fuse in the power supply to minimize the risk of destroying the controller, battery or motor!

Please make sure you read and understood the project documentation here: https://opensourceebikefirmware.bitbucket.io/

# Preface

Many thanks to the team of the Forumscontroller, Main functions are from [there](https://github.com/jenkie/Arduino-Pedelec-Controller)!

After the main developer casainho decided to stop his activies in this project, the [fork of stancecoke](https://github.com/stancecoke/BMSBattery_S_controllers_firmware) will be maintained as the main path.
Of course the origin projcect of casainho can still be found: [origin fork, not longer maintained](https://github.com/OpenSource-EBike-firmware/BMSBattery_S_controllers_firmware).

# About the project 

This firmware replaces the closed source one on Kunteng sine wave controllers. It enables you to change basically anything about the way the controller reacts to inputs (throttle, PAS, torque sensor, brake, displays) and handles different modes/states concerning  power output.
A graphical tool is available, which allows the use of the firmware even for less experienced Windows users without programming knowledge. With the BluOsec android app you can control the assist level and set many paramters at runtime.
[BluOSEC App is now here](https://github.com/Xnyle/bluosec-apk/raw/master/BluOsec-release.apk).

**But** if you want something added / changed that isn't already implemented / beta / buggy, you have to get involved yourself. This is a hobbyists project and there is no one else to blame than yourself if something isn't working as desired ;-)



### What works:  
Sine wave control with simplified FOC  
Overvoltage (regeneration) and undervoltage protection
Motor stopp while braking   
Driving modes:  
- PAS sensor with torque simulation and reverse step detection
- Throttle (also as override)
- Torque sensor  
- Recuperation via analog "thumb brake" signal or digitally by brake switch  
- Start-up support in torque sensor mode  
- Pushing aid
- Block commutation during start-up (only if you have o motor without "weird" angle definitions. 
Displays:
- Kunteng LCD3 / LCD5 (C/P parameters mapped differently)
- BluOsec App as Display / as Tripmonitor / for on the fly configuration  
- Kingmeter J-LCD and Forerider App (not tested for a long time now)

### What doesn't:

- You debug it thoroughly
- You tell us / patch it yourself ;-)

# For further reading

The documentation on the project can be found [here](https://github.com/stancecoke/BMSBattery_S_controllers_firmware/wiki)  

The corresponding thread in the german Pedelecforum [can be found here](https://www.pedelecforum.de/forum/index.php?threads/custom-rom-f%C3%BCr-kunteng-s06s-kt36-controller.50061/)  


# Want to help?
There is always things to improve, don't hesitate to get involved if you have improvements in mind.
