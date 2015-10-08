@echo off
rem set PATH=%SYSTEMROOT%\SYSTEM32;%SYSTEMROOT%;%SYSTEMROOT%\SYSTEM32\WBEM;

  if "%~1"=="" start mmc.exe & rem exit
	if /I "%~1"=="AD" start dsac.exe & rem exit
if /I "%~1"=="COMP" start compmgmt.msc & rem exit
if /I "%~1"=="DEV" start devmgmt.msc & rem exit
	if /I "%~1"=="DHCP" start dhcpmgmt.msc & rem exit
 if /I "%~1"=="DISK" start diskmgmt.msc & rem exit
if /I "%~1"=="DNS" start dnsmgmt.msc & rem exit
if /I "%~1"=="ENV" rundll32.exe sysdm.cpl,EditEnvironmentVariables & rem exit
if /I "%~1"=="EVT" start mmc.exe "%SYSTEMROOT%\SYSTEM32\eventvwr.msc" & rem exit
	if /I "%~1"=="GP" start mmc.exe %SYSTEMROOT%\SYSTEM32\gpmc.msc & rem exit
	if /I "%~1"=="HV" start mmc.exe "%PROGRAMFILES%\Hyper-V\virtmgmt.msc" & rem exit
	if /I "%~1"=="SRV" start mmc.exe "%SYSTEMROOT%\SYSTEM32\ServerManager.msc" & rem exit
if /I "%~1"=="SHARE" start mmc.exe "%SYSTEMROOT%\SYSTEM32\fsmgmt.msc" & rem exit
if /I "%~1"=="SVC" start mmc.exe "%SYSTEMROOT%\SYSTEM32\services.msc" & rem exit
if /I "%~1"=="TSK" if exist %SYSTEMROOT%\SYSTEM32\taskschd.msc start taskschd.msc  else start control.exe schedtasks & rem exit
if /I "%~1"=="USR2" start control.exe userpasswords2 & rem exit
if /I "%~1"=="USR" start mmc.exe "%SYSTEMROOT%\SYSTEM32\lusrmgr.msc" ; rem exit
	if /I "%~1"=="WB" start mmc.exe "%SYSTEMROOT%\SYSTEM32\wbadmin.msc" ; rem exit

echo.
echo Management Console Shell
echo Usage: mc [ad/comp/dev/dhcp/disk/dns/env/evt/gp/hv/srv/share/svc/tsk/usr[2]/wb]
echo.
rem exit 255

