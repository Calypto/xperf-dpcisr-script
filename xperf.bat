cd C:\Program Files\Microsoft Windows Performance Toolkit
xperf -on base+interrupt+dpc
timeout 5
xperf -stop
xperf -i c:\kernel.etl -o c:\report.txt -a dpcisr