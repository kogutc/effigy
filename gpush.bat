git add *
git status
set dt = date /T

@echo off
set RESTVAR=$1
shift
:loop1
if "%1"=="" goto after_loop
set RESTVAR=%RESTVAR% %1
shift
goto loop1

:after_loop
echo %RESTVAR%

git commit -m "%USERNAME% %date% %time%  %1 %RESTVAR%"
git push 