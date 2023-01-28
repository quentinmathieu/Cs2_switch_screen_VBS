Set WshShell = CreateObject("WScript.Shell") 
WshShell.Run chr(34) & Left(WScript.ScriptFullName, InStrRev(WScript.ScriptFullName, "\"))&"\2_SwitchScreen.bat" & Chr(34), 0
Set WshShell = Nothing
