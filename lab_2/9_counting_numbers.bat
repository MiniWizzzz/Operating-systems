@echo off

set /a kol=0
for /f %%i in ('findstr /x "[0-9]*" %1') do set /a n+=1
echo %n%

pause