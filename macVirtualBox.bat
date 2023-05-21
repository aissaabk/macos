@echo off
echo SCRIPT FOR HELP CONFIGURED VIRTUALBOX FOR RUN MACOS
ECHO IF YOU HAVE PROBLEM WITH SCRIPT YOU CAN CONTACT ME 0797492898
ECHO YOU CAN FOLLOW ME FROM FACEBOOK ACCOUNT https://www.facebook.com/devbelmel
echo LIST VIRTUAL MACHINE NAME AVAILABLE :
ECHO #################################################
VBoxManage list vms
ECHO #################################################
SET /P NAME="INPUT NAME VIRTUAL MACHINE FOR YOUR MACOS  : "
ECHO #################################################
Mac os résolution 
ECHO #################################################
SET /P SIZE="SIZE FOR SCREEN RESOLUTION ECP 1024x768 : "

VBoxManage modifyvm %NAME% --usbxhci on --firmware efi --chipset ich9 --mouse usbtablet --keyboard usb
if %errorlevel% neq 0 exit echo "error me be the name for the macos is not correct "
VBoxManage setextradata %NAME% "CustomVideoMode1" %SIZE%"x32"
if %errorlevel% neq 0 exit echo "error me be the name for the macos is not correct "
VBoxManage setextradata %NAME% VBoxInternal2/EfiGraphicsResolution %SIZE%
if %errorlevel% neq 0 exit echo "error me be the name for the macos is not correct "
VBoxManage.exe modifyvm %NAME% --cpuidset 00000001 000106e5 00100800 0098e3fd bfebfbff
if %errorlevel% neq 0  exit echo "error me be the name for the macos is not correct "
VBoxManage setextradata %NAME% "VBoxInternal/Devices/efi/0/Config/DmiSystemProduct" "iMac11,3"
if %errorlevel% neq 0 exit echo "error me be the name for the macos is not correct "
VBoxManage setextradata %NAME% "VBoxInternal/Devices/efi/0/Config/DmiSystemVersion" "1.0"
if %errorlevel% neq 0 exit echo "error me be the name for the macos is not correct "
VBoxManage setextradata %NAME% "VBoxInternal/Devices/efi/0/Config/DmiBoardProduct" "Iloveapple"
if %errorlevel% neq 0 exit echo "error me be the name for the macos is not correct "
VBoxManage setextradata %NAME% "VBoxInternal/Devices/smc/0/Config/DeviceKey" "ourhardworkbythesewordsguardedpleasedontsteal(c)AppleComputerInc"
if %errorlevel% neq 0 exit echo "error me be the name for the macos is not correct "
VBoxManage setextradata %NAME% "VBoxInternal/Devices/smc/0/Config/GetKeyFromRealSMC" 1
if %errorlevel% neq 0 exit echo "error me be the name for the macos is not correct "
if %PROCESSOR_ARCHITECTURE% -eq "AMD64" -or  %PROCESSOR_ARCHITECTURE% -eq "AMD64"
VBoxManage modifyvm %NAME%  --cpu-profile "Intel Core i7-6700K"
ECHO THE COMMANDS RUN SUCCESSFULLY THANKS
ECHO YOU CAN FOLLOW ME FROM FACEBOOK ACCOUNT https://www.facebook.com/devbelmel




