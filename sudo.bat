@rem ex. sudo cmd net start fms
@rem the script won't work if there's quotemark in command line.
@echo Set objShell = CreateObject("Shell.Application") > %temp%\sudo.tmp.vbs
@echo args = Right("%*", (Len("%*") - Len("%~1"))) >> %temp%\sudo.tmp.vbs
@echo objShell.ShellExecute "%~1", args, "", "runas" >> %temp%\sudo.tmp.vbs
@cscript %temp%\sudo.tmp.vbs
del /Q %temp%\sudo.tmp.vbs
