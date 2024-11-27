@echo OFF

set /p L=[Enter number:]
if %L% EQU - goto ExitLoop
set min=%L%
set max=%L%

:BegLoop
set /P L=[Enter number:] 
if %L% EQU - goto ExitLoop
if %L% GTR %max% set max=%L%
if %L% LSS %min% set min=%L%
GOTO BegLoop

:ExitLoop
echo min = %min% , max = %max%
pause