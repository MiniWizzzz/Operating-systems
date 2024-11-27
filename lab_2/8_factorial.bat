@echo off
setlocal enabledelayedexpansion

set /p number=Enter number:

:: Проверка на отрицательное значение
if %number% lss 0 (
    echo Number is too small. Minimum value is 1.
    exit /b
)

:: Проверка на слишком большое значение
if %number% gtr 10 (
    echo Number is too big. Maximum value is 10.
    exit /b
)

set /a factorial=1

for /l %%i in (1,1,%number%) do (
    set /a factorial*=%%i
)

echo factorial = !factorial!

pause
endlocal