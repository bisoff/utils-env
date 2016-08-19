@echo off
	rem setx will truncate the stored string to 1024 bytes, potentially corrupting the PATH
for /f "tokens=2*" %%a in ('reg query "HKCU\Environment" /v PATH') do  Set "userpath=%%b"
	rem "HKLM\SYSTEM\ControlSet001\Control\Session Manager\Environment" - for system PATH
echo %current_path%
set newpath=%current_path%;%CD%
setx path "%newpath%"
	rem setx /m path "%newpath%" - for system PATH

	rem rundll32 user32.dll,UpdatePerUserSystemParameters


	rem ln -s /Applications/Sublime\ Text\ 3.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl

	rem install jq #https://stedolan.github.io/jq/download/

