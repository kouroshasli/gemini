@echo off
chcp 65001 >nul
title Google AI Pro (5 TB) 零成本两年全自动控制台
cd /d "%~dp0"

:: Auto-detect proper Python
set "PY_CMD="
py -3 --version >nul 2>&1 && set "PY_CMD=py -3"
if not defined PY_CMD (
    for /d %%i in ("%LOCALAPPDATA%\Programs\Python\Python3*") do (
        if exist "%%i\python.exe" set "PY_CMD="%%i\python.exe""
    )
)
if not defined PY_CMD (
    python --version >nul 2>&1 && set "PY_CMD=python"
)
if not defined PY_CMD (
    echo [ERROR] Python not found! Please install Python 3.10+ from https://python.org
    pause
    exit /b 1
)

echo ======================================================================
echo   正在启动 Google AI Pro (5 TB) 零成本两年全自动控制台...
echo   控制台地址: http://127.0.0.1:8765
echo ======================================================================
start "" "http://127.0.0.1:8765"
%PY_CMD% app.py
pause
