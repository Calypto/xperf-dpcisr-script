@echo off
cd C:\Program Files\Microsoft Windows Performance Toolkit
echo Starting in 5 seconds.
timeout 5
echo(
echo Recording...
xperf -on base+interrupt+dpc
timeout 5
xperf -stop
xperf -i c:\kernel.etl -o c:\report.txt -a dpcisr
echo(
echo Done.
echo(
cmd /k