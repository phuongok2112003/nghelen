@echo off
cd ..

start /B cmd.exe /C python testselenium.py
echo. > content.txt
start /B cmd.exe /C python nghe.py
