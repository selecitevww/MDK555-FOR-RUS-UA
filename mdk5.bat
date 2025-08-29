@echo off

REM      BATCH FILE

chcp 65001

cls

color 70

:loop
CLS && TIMEOUT 0
CLS && netsh wlan set hostednetwork mode=allow
CLS && set hostednetwork mode=allow ssid=TP-Link_%RANDOM% key=ThePassword%RANDOM% keyusage=temporary
goto loop
