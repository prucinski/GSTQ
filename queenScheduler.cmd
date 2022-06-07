@echo off

ECHO God Save The Queen: scheduler

SET c=%~dp0queen.cmd

echo %c%

SCHTASKS /CREATE /SC HOURLY /TN "QueenTask" /TR "%c%"
