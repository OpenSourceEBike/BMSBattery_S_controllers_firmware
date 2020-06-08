# Important

Caution! this is not a professional project. Anything you do with this firmware is at your own risk. In any case, use a quick fuse in the power supply to minimize the risk of destroying the controller, battery or motor!

Please read and reread the [wiki](https://github.com/stancecoke/BMSBattery_S_controllers_firmware/wiki).

## Preface

Many thanks to the team of the Forumscontroller, Main functions are from [there](https://github.com/jenkie/Arduino-Pedelec-Controller)!

This is the maintained fork of [casainho's project(not maintained)](https://github.com/OpenSource-EBike-firmware/BMSBattery_S_controllers_firmware)

## About the project

This firmware replaces the closed source one on Kunteng sine wave controllers. It enables you to change basically anything about the way the controller reacts to inputs (throttle, PAS, torque sensor, brake, displays) and handles different modes/states concerning  power output.
[A graphical tool](https://github.com/stancecoke/BMSBattery_S_controllers_firmware/wiki/04-The-Java-Tool) is available, which allows the use of the firmware even for less experienced Windows users without programming knowledge. With the [BluOsec android app](https://github.com/stancecoke/BMSBattery_S_controllers_firmware/wiki/05-The-BluOSEC-Android-App) you can control the assist level and set many parameters at runtime.  [Download it by clicking this link](https://github.com/Xnyle/bluosec-apk/raw/master/BluOsec-release.apk).

### Help out yo

 If you want something added / changed that isn't already implemented / beta / buggy, you have to get involved yourself. This is a hobbyists project and there is no one else to blame than yourself if something isn't working as desired ;-)

### What works  

* Sine wave control with simplified FOC  
* Overvoltage (regeneration) and undervoltage protection
* Motor stop while braking
* Driving modes:  
    * PAS sensor with torque simulation and reverse step detection
    * Throttle (also as override)
    * Torque sensor  
    * Recuperation via analog "thumb brake" signal or digitally by brake switch  
    * Start-up support in torque sensor mode  
    * Pushing aid
    * Block commutation during start-up (only if you have o motor without "weird" angle definitions.
* Displays:
    * Kunteng LCD3 / LCD5 (C/P parameters mapped differently)
    * BluOsec App as Display / as Trip monitor / for on the fly configuration  
    * Kingmeter J-LCD and Forerider App (not tested for a long time now)

### What doesn't

* You debug it thoroughly
* You tell us / patch it yourself ;-)

## For further reading

The documentation on the project, aka wiki, can be found [here](https://github.com/stancecoke/BMSBattery_S_controllers_firmware/wiki)  

The corresponding thread in the german Pedelecforum [can be found here](https://www.pedelecforum.de/forum/index.php?threads/custom-rom-f%C3%BCr-kunteng-s06s-kt36-controller.50061/)  

## Want to help

There is always things to improve, don't hesitate to get involved if you have improvements in mind.
