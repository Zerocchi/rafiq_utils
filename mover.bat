@echo off
setlocal enabledelayedexpansion

set start=%1
set end=%2
set step=%3
set loopcount=%start%
set loopcountend=%start%
if "%3"=="" set step=10

:main
set /a loopcount=%loopcountend%
set /a loopcountend=loopcount+step
if %loopcount% gtr %end% goto :exitloop else goto :createfolder

:createfolder
set /a endfilename=loopcountend-1
set filename="%loopcount%-%endfilename%"
if exist %filename%\ (
  echo File existed
  goto :exitloop
) else (
  mkdir %filename%
  goto :movefiles
)

:movefiles
move %loopcount%.txt %filename% >NUL
echo %loopcount%.txt moved
set /a loopcount=loopcount+1
if %loopcount%==%loopcountend% goto :main
goto :movefiles

:exitloop
pause
exit /b