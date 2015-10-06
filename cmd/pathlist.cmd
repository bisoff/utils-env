@echo off
::c:/>@FOR /F "tokens=1*" %A IN ('REG QUERY "HKCU\Environment" -v path ^| FIND "REG_"') DO FOR %C IN (%B) DO @echo %C
::@FOR /F "tokens=1*" %%A IN ('REG QUERY "HKCU\Environment" -v path ^| FIND "REG_"') DO @echo %%B

if "%1" EQU "sys" SET KEY=HKLM\SYSTEM\ControlSet001\Control\Session Manager\Environment
if "%1" EQU "SYS" SET KEY=HKLM\SYSTEM\ControlSet001\Control\Session Manager\Environment
if "%1" EQU "user" SET KEY=HKCU\Environment
if "%1" EQU "USER" SET KEY=HKCU\Environment
if "%1" EQU "" SET KEY=HKCU\Environment
echo ==%KEY%==
For /f "tokens=2*" %%a In ('Reg.exe query "%KEY%" /v Path^|Find "Path"') do set "CurPath=%%~b"
::FOR /F "tokens=1*" %%A IN ('REG QUERY "%KEY%" -v path ^| FIND "REG_"') DO FOR %%C IN (%%B) DO @echo %%C
::FOR /F "tokens=1*" %%A IN ('REG QUERY "%KEY%" -v path ^| FIND "REG_"') DO FOR /F "tokens=1*" %%C IN ('echo %%B') DO echo %%D
::& FOR /F "delims=;" %%E IN ('echo %%D') DO @echo %%E
::FOR /F "delims=;" %%E IN ('echo %%D') DO @echo %%E
::echo %%D
::FOR /F "delims=;" %%W IN ('echo %%V') DO @echo %%W
::echo %%V
::FOR %%C IN (%%B) DO @echo %%C
::"Skip=4 Tokens=3 delims=;"

SET ALL=false
if "%2" EQU "all" SET ALL=true
if "%2" EQU "ALL" SET ALL=true
if "%ALL%" EQU "true" (
	echo  --------------------------------------------------------------------------------
	echo "%CurPath%"
	echo  --------------------------------------------------------------------------------
  )
::exit /b 0

:FORLOOP
For /F "tokens=1* delims=;" %%A IN ("%CurPath%") DO (
	echo %%A
	::echo %%B
	set CurPath=%%B

	echo ---------- >nul
	::echo "%CurPath%"
	if ["%CurPath%"] NEQ [""] goto FORLOOP
)