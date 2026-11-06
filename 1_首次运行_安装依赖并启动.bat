@echo off
chcp 65001 >nul
title Google AI Pro (5 TB) 零成本两年全自动控制台 - 环境安装与启动
cd /d "%~dp0"

:: Auto-detect proper Python with pip
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
echo   正在检查并安装 Python 依赖包 (fastapi, uvicorn, playwright)...
echo   Python: %PY_CMD%
echo ======================================================================
%PY_CMD% -m pip install -r requirements.txt
%PY_CMD% -m playwright install chromium
echo.
echo ======================================================================
echo   正在启动 Web 控制台 (http://127.0.0.1:8765) ...
echo ======================================================================
start "" "http://127.0.0.1:8765"
%PY_CMD% app.py
pause
