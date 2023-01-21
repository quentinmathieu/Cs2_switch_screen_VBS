@echo off

@REM switch to only 1 screen
DisplaySwitch.exe /internal

set csgopath=D:\SteamLibrary\steamapps\common\Counter-Strike Global Offensive
cd %csgopath%
dir
pause

@REM cd  D:\SteamLibrary\steamapps\common\Counter-Strike Global Offensive
@REM echo %cd%

timeout /t 5

SETLOCAL EnableExtensions
set EXE=csgo.exe
:before
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% (
  echo %EXE% is Running
  timeout /t 5
  goto :before
)


DisplaySwitch.exe /extend


