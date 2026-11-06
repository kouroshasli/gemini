@echo off
chcp 65001 >nul
title Google AI Pro (5 TB) - Setup and Run
cd /d "%~dp0"
echo ======================================================================
echo   Checking and installing Python requirements...
echo ======================================================================
python -m pip install -r requirements.txt
echo.
echo ======================================================================
echo   Launching Web Console at http://127.0.0.1:8765 ...
echo ======================================================================
start "" "http://127.0.0.1:8765"
python app.py
pause
