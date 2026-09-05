@echo off
setlocal
cd /d "%~dp0"
where py >nul 2>nul || (echo Install Python 3.12+ first.&pause&exit /b 1)
py -3.12 -m venv .venv
call .venv\Scripts\activate.bat
python -m pip install --upgrade pip
pip install -e .
echo Setup complete. Double-click launch_ztrader.bat
pause
