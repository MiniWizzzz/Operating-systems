@echo off

SET /p ext=enter papka:
SET /p ext=enter ext:

cd %papka%
dir *.%ext%

pause