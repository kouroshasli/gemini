@echo off
chcp 65001 >nul
title Google AI Pro (5 TB) - Persian Console Setup
cd /d "%~dp0"
echo ======================================================================
echo   Dar hal barresi va nasbe pish-niazha (fastapi, uvicorn, playwright)...
echo   در حال بررسی و نصب پکیج‌های پایتون...
echo ======================================================================
python -m pip install -r requirements.txt
echo.
echo ======================================================================
echo   Dar hal ejraye web console (http://127.0.0.1:8765) ...
echo   در حال اجرای کنترل پنل تحت وب...
echo ======================================================================
start "" "http://127.0.0.1:8765"
python app.py
pause
