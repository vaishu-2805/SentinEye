@echo off
echo Starting Simple Face Tracker...
echo.
echo FEATURES:
echo   - Basic face detection
echo   - FPS counter
echo   - Face counting
echo   - Configurable settings
echo.
echo Controls:
echo   'q' - Quit the application
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
python face_tracker.py

echo.
echo Face Tracker has stopped.
pause
