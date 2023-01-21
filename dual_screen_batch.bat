

@REM switch to only 1 screen
DisplaySwitch.exe /internal


@REM set steamPath = "C:\Program Files (x86)\Steam\steam.exe"
@REM set start =  steam://rungameid/730
@REM set csgopath=steam://rungameid/730
@REM cd %csgopath%
@REM 
@REM 
@REM set EXE=csgo.exe
@REM 
@REM start %EXE%

"C:\Program Files (x86)\Steam\steam.exe" steam://rungameid/730


timeout /t 30

SETLOCAL EnableExtensions
set EXE=csgo.exe
:before
@REM While csgo is running display that it's running ; THEN when you quit csgo leave the for loop
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% (
  echo %EXE% is Running
  timeout /t 5
  goto :before
)


@REM that extends screens
DisplaySwitch.exe /extend


