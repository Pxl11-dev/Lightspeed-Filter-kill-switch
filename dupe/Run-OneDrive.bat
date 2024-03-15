@echo off
:loop

SETLOCAL EnableExtensions
SET EXE=lsfilter.exe
REM for testing
REM SET EXE=svchost.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF NOT %%x == %EXE% (
  ECHO %EXE% is Not Running
  REM This GOTO may be not necessary
  GOTO notRunning
) ELSE (
  ECHO %EXE% is running
  GOTO Running
)
:Running
taskkill /f /im lsfilter.exe

:notRunning
goto loop
