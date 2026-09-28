@echo off
title MATEJ OS
color 0A

:DESKTOP
cls
echo.
echo ============================================================
echo                    M A T E J   O S
echo ============================================================
echo.
echo                    # # # # #
echo                  #           #
echo                #               #
echo               #      HOME       #
echo                #               #
echo                  #           #
echo                    # # # # #
echo.
echo.
echo        [1] FILES       [2] BROWSER
echo.
echo        [3] SETTINGS    [4] ABOUT
echo        [5] EXIT
echo.
echo ============================================================
echo   TIME: %time:~0,8%
echo   TIME ZONE: 
tzutil /g
echo ============================================================
echo.

set /p keuze=Open een app: 

if "%keuze%"=="1" goto FILES
if "%keuze%"=="2" goto BROWSER
if "%keuze%"=="3" goto SETTINGS
if "%keuze%"=="4" goto ABOUT
if "%keuze%"=="5" goto EXIT

goto DESKTOP


:FILES
cls
echo.
echo ================= FILES =================
echo.
echo        # MATEJ OS
echo.
echo        [1] Documents
echo        [2] Pictures
echo        [3] Games
echo        [4] Back
echo.
set /p keuze=Kies: 

if "%keuze%"=="1" goto DOCUMENTS
if "%keuze%"=="2" goto PICTURES
if "%keuze%"=="3" goto GAMES
if "%keuze%"=="4" goto DESKTOP

goto FILES


:DOCUMENTS
cls
echo.
echo ================ DOCUMENTS ================
echo.
echo        Geen bestanden gevonden.
echo.
pause
goto FILES


:PICTURES
cls
echo.
echo ================ PICTURES =================
echo.
echo        [ MATEJ OS IMAGE ]
echo.
echo              /\
echo             /##\
echo            /####\
echo           /######\
echo          /########\
echo.
pause
goto FILES


:GAMES
cls
echo.
echo ================= GAMES ==================
echo.
echo        Geen games geinstalleerd.
echo.
pause
goto FILES


:BROWSER
cls
echo.
echo ================ BROWSER =================
echo.
echo        MATEJ Browser
echo.
set /p site=Typ iets om te zoeken: 
echo.
echo        Je zocht naar: %site%
echo.
echo        Dit is een demo-browser.
echo.
pause
goto DESKTOP


:SETTINGS
cls
echo.
echo ================ SETTINGS ================
echo.
echo        [1] System Info
echo        [2] Time Zone
echo        [3] Back
echo.
set /p keuze=Kies: 

if "%keuze%"=="1" goto SYSTEM
if "%keuze%"=="2" goto TIMEZONE
if "%keuze%"=="3" goto DESKTOP

goto SETTINGS


:SYSTEM
cls
echo.
echo ============== SYSTEM INFO ===============
echo.
echo        OS: MATEJ OS
echo        Version: 1.0
echo        Creator: Matej
echo        Mode: Desktop
echo.
echo        Time: %time:~0,8%
echo.
pause
goto SETTINGS


:TIMEZONE
cls
echo.
echo ================ TIME ZONE ===============
echo.
echo        Windows Time Zone:
echo.
tzutil /g
echo.
echo        Current time:
echo        %time:~0,8%
echo.
pause
goto SETTINGS


:ABOUT
cls
echo.
echo ================= ABOUT ==================
echo.
echo             M A T E J   O S
echo.
echo        Een kleine OS-demo gemaakt
echo        met alleen Windows BAT commands!
echo.
echo        Bedankt voor het gebruiken!
echo.
pause
goto DESKTOP


:EXIT
cls
echo.
echo        MATEJ OS wordt afgesloten...
timeout /t 1 /nobreak >nul
exit