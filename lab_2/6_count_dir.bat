@echo off
setlocal

set /p "dir=enter path: "
set "count=0"

for /d %%a in ("%dir%\*") do (
  set /a count+=1
)

echo count dir in "%dir%": %count%

pause