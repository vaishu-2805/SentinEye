@echo off
echo ===============================================
echo    Advanced Face Tracker Launcher
echo ===============================================
echo.

:: Check if screenshot directory exists
if not exist "screenshots\" (
    echo Creating screenshots directory...
    mkdir screenshots
)

:: Check if Python virtual environment exists
if not exist "env\Scripts\activate.bat" (
    echo Error: Python virtual environment not found
    echo Please run 'python -m venv env' to create it
    pause
    exit /b
)

echo.
echo Starting Advanced Face Tracker...
echo.
echo Control Keys:
echo - Press 'q' to quit
echo - Press 's' to take a screenshot
echo - Press 'h' to toggle help text display
echo - Press 'e' to toggle eye detection on/off
echo.

:: Activate the virtual environment and run the application
call .\env\Scripts\activate.bat
python advanced_face_tracker.py

echo.
echo Advanced Face Tracker has stopped.
pause
