@echo off

REM      BATCH FILE

chcp 65001

cls

color 70

setlocal EnableDelayedExpansion

:loop
set "charset=ABCDEF0123456789"
set "length=8"
set "randomString="
for /l %%a in (1,1,%length%) do (
    set /a index=!random! %% 16
    for %%b in (!index!) do set "randomString=!randomString!!charset:~%%b,1!"
)
echo Windows Registry Editor Version 5.00 > X:\bat\regedit2.reg  && cls
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0012] >> X:\bat\regedit2.reg  && cls

set /a var1=0+%random%%2 && cls

SET var2=15000 && cls

IF %var1% GTR %var2% (
    echo "NetworkAddress"="0021%randomString%" >> X:\bat\regedit2.reg  && cls
    ECHO %var1% больше %var2%. & cls

) ELSE IF %var1% LSS %var2% (
    echo "NetworkAddress"="0022%randomString%" >> X:\bat\regedit2.reg  && cls
    ECHO %var1% меньше %var2%. & cls

) ELSE (
    echo "NetworkAddress"="0023%randomString%" >> X:\bat\regedit2.reg  && cls
    ECHO %var1% равно %var2%. & cls

)
 
reg import X:\bat\regedit2.reg && cls
goto loop
exit
