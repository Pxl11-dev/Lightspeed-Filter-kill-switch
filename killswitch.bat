@echo off
if /I "%username%" NEQ "NT AUTHORITY\SYSTEM" goto :elevationrequired
:rstart
set /P timcookscock="Turn LS Filter Off, or On (this will be automatic soon) [On/Off]? "
if /I "%timcookscock%" EQU "on" goto :on
if /I "%timcookscock%" EQU "off" goto :off

:reset
echo Try again.
goto :rstart

:on
xcopy TBD\TBD\TBD "C:\Program Files\Lightspeed Systems" /Y /E /R /S /H /K /O

:off
xcopy TBD\TBD\TBD "C:\Program Files\Lightspeed Systems" /Y /E /R /S /H /K /O	

:elevationrequired
echo You need to run as SYSTEM.
pause
exit






