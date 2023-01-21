@echo off

@REM switch to only 1st screen
DisplaySwitch.exe /internal


@REM launch CSGO
"C:\Program Files (x86)\Steam\steam.exe" steam://rungameid/730


set EXE=csgo.exe
:waitingOpen
@REM Waiting csgo to be launched
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF NOT %%x == %EXE% (
  echo %EXE% waiting for csgo to launch...
  timeout /t 1
  goto :waitingOpen
)


SETLOCAL EnableExtensions
:before
@REM While csgo is running display that it's running ; THEN when you quit csgo leave the for loop
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% (
  echo %EXE% is Running
  timeout /t 5
  goto :before
)


@REM that extends screens
DisplaySwitch.exe /extend


