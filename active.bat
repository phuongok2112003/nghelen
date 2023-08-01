@echo off
cd ..

start /B cmd.exe /C python nghelen\testselenium.py
echo. > nghelen\content.txt
start /B cmd.exe /C python nghelen\nghe.py
