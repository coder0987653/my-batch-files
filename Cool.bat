@echo off
title MATEJ OS
color 0B

:MENU
cls

echo.
echo              MATEJ OS
echo.
echo                 /\
echo                /##\
echo               /####\
echo              /######\
echo             /########\
echo            /##########\
echo           ##############
echo           ##          ##
echo           ##    ##    ##
echo           ##    ##    ##
echo           ##          ##
echo           ##############
echo.
echo.
echo        =====================
echo             MATEJ OS
echo        =====================
echo.
echo        [1] START
echo        [2] SETTINGS
echo        [3] EXIT
echo.

set /p keuze=Kies een nummer: 

if "%keuze%"=="1" goto START
if "%keuze%"=="2" goto SETTINGS
if "%keuze%"=="3" goto EXIT

goto MENU

:START
cls
echo.
echo ============================
echo        MATEJ OS DESKTOP
echo ============================
echo.
echo        Welkom! :D
echo.
pause
goto MENU

:SETTINGS
cls
echo.
echo ============================
echo          SETTINGS
echo ============================
echo.
echo        MATEJ OS Settings
echo.
pause
goto MENU

:EXIT
cls
echo.
echo MATEJ OS sluit...
timeout /t 1 >nul
exit