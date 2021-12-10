@echo off

set loopcount=1
set end=%1

:createfile
set /a extra=end+1
copy /y NUL %loopcount%.txt >NUL
echo %loopcount%.txt created.
set /a loopcount=loopcount+1
if %loopcount%==%extra% goto :exitloop
goto :createfile

:exitloop
echo %end% text file(s) created.
exit /b