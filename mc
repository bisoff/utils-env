#!/usr/bin/bash
if [[ "$1" = "comp" ]]; then start compmgmt.msc & exit; fi
if [[ "$1" = "dev" ]]; then start devmgmt.msc & exit; fi
if [[ "$1" = "dns" ]]; then start dnsmgmt.msc & exit; fi
if [[ "$1" = "env" ]]; then rundll32.exe sysdm.cpl,EditEnvironmentVariables & exit; fi
if [[ "$1" = "evt" ]]; then start mmc.exe "%SYSTEMROOT%\SYSTEM32\eventvwr.msc" & exit; fi
if [[ "$1" = "share" ]]; then start mmc.exe "%SYSTEMROOT%\SYSTEM32\fsmgmt.msc" & exit; fi
if [[ "$1" = "svc" ]]; then start mmc.exe "%SYSTEMROOT%\SYSTEM32\services.msc" & exit; fi
if [[ "$1" = "tsk" ]]; then
	if [ -f %SYSTEMROOT%\SYSTEM32\taskschd.msc ]; then
		start taskschd.msc & exit
	  else
	  	start control.exe schedtasks & exit
	  fi
  fi
if [[ "$1" = "usr" ]]; then start mmc.exe "%SYSTEMROOT%\SYSTEM32\lusrmgr.msc" & exit; fi
if [[ "$1" = "pwd" ]]; then start control.exe userpasswords2 & exit; fi

echo ""
echo Management Console Shell
echo Usage: mc [comp/dev/dns/env/evt/share/svc/tsk/usr/pwd]
#ad/dhcp/gp/hv/srv/wb/disk/
echo ""

