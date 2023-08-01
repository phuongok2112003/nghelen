@echo off

start /B cmd.exe /C python testselenium.py
del content.txt
python nghe.py
