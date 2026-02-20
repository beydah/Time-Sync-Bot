@echo off
TITLE Time Sync Bot
:: Wrapper to run the PowerShell script with correct permissions and execution policy

:: Check if running as administrator
net session >nul 2>&1
if %errorLevel% == 0 (
    echo [INFO] Running with Administrator privileges.
) else (
    echo [WARNING] NOT running as Administrator.
    echo Please right-click and select "Run as administrator" to ensure time sync works.
    echo.
    pause
    exit /b
)

:: Launch PowerShell script
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0time_sync.ps1"

echo.
echo Script terminated.
pause
