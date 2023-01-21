@echo off




@REM copy the script in startup windows's programs
set startup="%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
if NOT exist %startup%\SwitchScreen.exe (
    copy %0 %startup%\SwitchScreen.exe
) 

@REM mklink /d %current%  %startup%


set EXE=csgo.exe

:waitingOpen
@REM Waiting csgo to be launched
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF NOT %%x == %EXE% (
  echo %EXE% waiting for csgo to launch...
  timeout /t 3
  goto :waitingOpen
)

@REM switch to only 1st screen
DisplaySwitch.exe /internal



SETLOCAL EnableExtensions
:before
@REM While csgo is running display that it's running ; THEN when you quit csgo leave the for loop
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% (
  echo %EXE% is Running
  timeout /t 3
  goto :before
)


@REM that extends screens
DisplaySwitch.exe /extend








goto :waitingOpen



