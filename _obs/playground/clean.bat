@echo off
cd /d %~dp0
echo :
echo : delete files that related with the state machine.
echo : and copy reference Project01.dpr to src.
echo : 
echo : continue?
pause
del /q doc\*.*
del /q /s src\*.*
copy ref\Project01.dpr src\*.*
pause