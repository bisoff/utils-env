@echo off
for /f "tokens=2*" %%a in ('reg query "HKCU\Environment" /v PATH') do  Set "userpath=%%b"
echo %userpath%
pause
