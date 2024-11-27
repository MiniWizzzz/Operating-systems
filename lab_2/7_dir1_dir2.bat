@echo off
setlocal enabledelayedexpansion

set /p dir_1=enter path dir 1: 
set /p dir_2=enter path dir 2: 
set /p ext=enter ext: 

for %%a in ("%dir_1%\*%ext%") do (
  set filename=%%~na
  if exist "%dir_2%\!filename!%ext%" (
    echo !filename!%ext%
  )
)

pause