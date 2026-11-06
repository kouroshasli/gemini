@echo off
chcp 65001 >nul
title Google AI Pro (5 TB) - Persian Console
cd /d "%~dp0"
echo ======================================================================
echo   Dar hal ejraye control panel Google AI Pro (2-Year Zero Cost)...
echo   در حال اجرای کنترل پنل ۲ ساله Google AI Pro...
echo   Web Console: http://127.0.0.1:8765
echo ======================================================================
start "" "http://127.0.0.1:8765"
python app.py
pause
