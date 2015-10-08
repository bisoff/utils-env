rem http://ru.wikipedia.org/wiki/Переменная_среды_Windows
rem private media ------------------------------------------------
pause
#TODO: tee log
del /Q c:\ebook\* & rmdir /Q c:\ebook\
del /Q c:\share\* & rmdir /Q c:\share\

rem private data ------------------------------------------------
set BASE=%HOMEDRIVE%%HOMEPATH%
del /Q %BASE%\.ssh\* & rmdir /Q %BASE%\.ssh
del /Q %BASE%\.cr3\* & rmdir /Q %BASE%\.cr3
del /Q %BASE%\.gradle\* & rmdir /Q %BASE%\.gradle
del /Q %BASE%\distro\* & rmdir /Q %BASE%\distro
del /Q %BASE%\docs\* & rmdir /Q %BASE%\docs
del /Q %BASE%\Eclipse\* & rmdir /Q %BASE%\Eclipse
del /Q %BASE%\Oracle\* & rmdir /Q %BASE%\Oracle
del /Q %BASE%\*

rem cache/log ------------------------------------------------
set BASE=%PROGRAMFILES%
explorer
opera
firefox
pidgin
?psd

rem extra utils
set BASE=%PROGRAMFILES(x86)%

del /Q %BASE%\DFX\* 		& rmdir /Q %BASE%\
del /Q %BASE%\Dropbox\* 	& rmdir /Q %BASE%\
del /Q "%BASE%\Foxit Reader\*" 	& rmdir /Q %BASE%\
del /Q %BASE%\Horloger\* 	& rmdir /Q %BASE%\
del /Q "%BASE%\Amine Dries\*" 	& rmdir /Q %BASE%\
del /Q %BASE%\IrfanView\* 	& rmdir /Q %BASE%\
del /Q %BASE%\Mail.Ru\* 	& rmdir /Q %BASE%\
del /Q %BASE%\Path2Clipboard\* 	& rmdir /Q %BASE%\
del /Q "%BASE%\PDF Complete\*" 	& rmdir /Q %BASE%\
del /Q %BASE%\Pidgin\* 		& rmdir /Q %BASE%\
del /Q "%BASE%\PLSQL Developer\*" & rmdir /Q %BASE%\
del /Q %BASE%\PostgreSQL\* 	& rmdir /Q %BASE%\
del /Q "%BASE%\Punto Switcher\*" & rmdir /Q %BASE%\
del /Q %BASE%\SmartGitHg\* 	& rmdir /Q %BASE%\
del /Q "%BASE%\SmartSVN 7.5\*" 	& rmdir /Q %BASE%\
del /Q %BASE%\Unlocker\* 	& rmdir /Q %BASE%\
del /Q %BASE%\VDSoft\* 		& rmdir /Q %BASE%\
del /Q %BASE%\Winamp\* 		& rmdir /Q %BASE%\
del /Q %BASE%\WinMerge\* 	& rmdir /Q %BASE%\

set BASE=%PROGRAMFILES%
del /Q %BASE%\TortoiseGit\* 	& rmdir /Q %BASE%\
del /Q %BASE%\TortoiseSVN\* 	& rmdir /Q %BASE%\
del /Q %BASE%\totalcmd\* 	& rmdir /Q %BASE%\
del /Q %BASE%\WinDjView\* 	& rmdir /Q %BASE%\
del /Q %BASE%\Yandex\* 		& rmdir /Q %BASE%\
del /Q %BASE%\putty.exe\* 	& rmdir /Q %BASE%\

set BASE=C:
del /Q %BASE%\git\* 		& rmdir /Q %BASE%\
del /Q %BASE%\alreader2\* 	& rmdir /Q %BASE%\
del /Q %BASE%\cr3\* 		& rmdir /Q %BASE%\
del /Q %BASE%\cygwin\* 		& rmdir /Q %BASE%\
del /Q %BASE%\dbmaintain*\* 	& rmdir /Q %BASE%\

del /Q %BASE%\eclipse\* 	& rmdir /Q %BASE%\
del /Q %BASE%\emacs\* 		& rmdir /Q %BASE%\
del /Q %BASE%\flyway\* 		& rmdir /Q %BASE%\
del /Q %BASE%\gradle\* 		& rmdir /Q %BASE%\
del /Q %BASE%\groovy\* 		& rmdir /Q %BASE%\
del /Q %BASE%\jcommander\* 	& rmdir /Q %BASE%\
del /Q %BASE%\liquibase\* 	& rmdir /Q %BASE%\
del /Q %BASE%\maven\*		& rmdir /Q %BASE%\
del /Q %BASE%\OFX2CSV\* 	& rmdir /Q %BASE%\
del /Q %BASE%\Perl64\* 		& rmdir /Q %BASE%\
del /Q %BASE%\Sublime\* 	& rmdir /Q %BASE%\
del /Q %BASE%\svnkit\* 		& rmdir /Q %BASE%\


rem private prj ------------------------------------------------
del /Q c:\ad & rmdir /Q c:\ad
del /Q c:\java & rmdir /Q c:\java
del /Q c:\brv & rmdir /Q c:\brv

?users svn project explores
