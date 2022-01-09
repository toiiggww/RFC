@echo off
rem this file used for download rfc text file from rfc-editor.org

if [%1] equ [] goto :usage
if [%2] equ [] goto :usage
if exist download rd /s /q download
md download

for /l %%i in (%1,1,%2) do curl -s -o download\rfc%%i.txt https://www.rfc-editor.org/rfc/rfc%%i.txt & echo download rfc%%i.txt
explorer download
goto :eof

:usage
echo %0 [start] [end]
echo [start] will be the rfc number for start to download
echo [end] will be the rfc number for end of download

:eof
