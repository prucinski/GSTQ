@echo off

ECHO God Save The Queen

::set a "random" image to open.
set /A rnd=%RANDOM%
ECHO %rnd%
set /A img=rnd%%11
ECHO %img%

::you can straight up open websites in cmd

if %img%==0 start https://media.discordapp.net/attachments/911222846607491142/981837461883875388/RDT_20220602_1030461618165994696023734.jpg?width=568^&height=497
if %img%==1 start https://www.31daily.com/wp-content/uploads/2020/06/100229560-queen-philip-FEATURES_trans_NvBQzQNjv4BqmlEBJTNgiNgOlretjDA5v2s2XPKk8aYJ_2q-o4GcL3Y.jpg
if %img%==2 start https://www.rd.com/wp-content/uploads/2018/07/royal-windsor-horse-show-berkshire-britain-10-may-2013.jpg
if %img%==3 start https://cdn.discordapp.com/attachments/911222846607491142/983684545897455626/queen-elizabeth-1534366844.jpg
if %img%==4 start https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/gettyimages-1346536169.jpg?crop=1.00xw:1.00xh;0,0&resize=640:*
if %img%==5 start https://wallpaperaccess.com/full/2341870.jpg
if %img%==6 start https://wallpaperaccess.com/full/6876297.jpg
if %img%==7 start https://wallpaperaccess.com/full/2624381.jpg
if %img%==8 start https://wallpaperaccess.com/full/6876315.png
if %img%==9 start https://wallpaperaccess.com/full/2624430.jpg
if %img%==10 start https://wallpaperaccess.com/full/6876491.jpg

::setting the wallpaper to a disapproving queen. Will probably work after an hour,
::definitely after a restart. To be improved to pull the images from the net

::Works  by updating the register, RUNDLL32.EXE is half-specified and shouldnt be used
::like this 

set queenPath=%~dp0screensaver\dq.jpg
ECHO %queenPath%
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d  %queenPath% /f
RUNDLL32.EXE user32.dll, UpdatePerUserSystemParameters

TIMEOUT 10
