@echo off
SET FOLDER = %cd%

@REM switch to only 1 screen
DisplaySwitch.exe /internal

set csgopath= D:\SteamLibrary\steamapps\common\Counter-Strike Global Offensive\csgo.exe

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

cd %FOLDER%
DisplaySwitch.exe /extend


