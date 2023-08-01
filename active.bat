@echo off
cd ..

start /B cmd.exe /C python nghelen\testselenium.py
echo. > nghelen\content.txt
python  nghelen\nghe.py
