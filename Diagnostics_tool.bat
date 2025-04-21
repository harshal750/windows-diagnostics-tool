@echo off
title 🛠️ System Diagnostics Tool - by Harshal
color 0E

:MENU
cls
echo ========================================================
echo           SYSTEM DIAGNOSTICS - MEMORY & STARTUP
echo ========================================================
echo.
echo   1. Run Windows Memory Diagnostic
echo   2. Launch Startup Repair (via Recovery Options)
echo   3. Open Advanced Startup (Recovery Mode)
echo   4. Exit
echo.
set /p choice=Select an option [1-4]: 

if "%choice%"=="1" goto MEMTEST
if "%choice%"=="2" goto STARTUP_REPAIR
if "%choice%"=="3" goto ADVANCED_STARTUP
if "%choice%"=="4" exit
goto MENU

:MEMTEST
echo Launching Windows Memory Diagnostic Tool...
mdsched.exe
goto MENU

:STARTUP_REPAIR
echo Opening Recovery Options for Startup Repair...
start ms-settings:recovery
echo.
echo Now click 'Restart now' under Advanced startup, then use Startup Repair.
pause
goto MENU

:ADVANCED_STARTUP
echo Opening Recovery Options (Advanced Startup)...
shutdown /r /o /f /t 0
goto MENU
