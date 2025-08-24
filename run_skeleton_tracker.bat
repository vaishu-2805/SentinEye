@echo off
echo ===============================================
echo    ATM Security System with Skeleton Detection
echo ===============================================
echo.

REM Check if models directory exists
if not exist "models\" (
    echo Creating models directory...
    mkdir models
)

REM Check if YOLO model exists
if not exist "yolo11n-pose.pt" (
    echo WARNING: YOLO pose model not found.
    echo The system will attempt to download it at first run.
    echo.
)

REM Check if logs directory exists
if not exist "logs\" (
    echo Creating logs directory...
    mkdir logs
)

REM Check if screenshot directories exist
if not exist "screenshots\" (
    echo Creating screenshots directory...
    mkdir screenshots
)

if not exist "security_screenshots\" (
    echo Creating security screenshots directory...
    mkdir security_screenshots
)

echo.
echo Starting ATM Security System with Skeleton Detection...
echo.
echo Control Keys:
echo - Press 'q' to quit
echo - Press 's' to take a screenshot
echo - Press 'h' to toggle help overlay
echo - Press 'k' to toggle keypad
echo - Press 'a' to display analytics report
echo.

:: Check if Python virtual environment exists
if not exist "env\Scripts\activate.bat" (
    echo Error: Python virtual environment not found
    echo Please run 'python -m venv env' to create it
    pause
    exit /b
)

:: Activate the virtual environment and run the application
call .\env\Scripts\activate.bat
python main.py

echo.
echo ATM Security System has stopped.
pause
