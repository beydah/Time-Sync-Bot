#region Header
# --------------------------------------------------------------------------------------------------
# Script Name: time_sync.ps1
# Description: Automatically synchronizes system time using w32tm service.
#              Enforces Admin privileges and provides visual feedback.
# --------------------------------------------------------------------------------------------------
#endregion

#region Configuration
$INTERVAL_SECONDS = 120
#endregion

#region Functions
function F_Check_Admin {
    $current_principal = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())
    return $current_principal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
}

function F_Write_Log {
    param (
        [string]$p_message,
        [ConsoleColor]$p_color = "White"
    )
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    Write-Host "[$timestamp] $p_message" -ForegroundColor $p_color
}
#endregion

#region Main
Clear-Host
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "   🕒  TIME SYNC BOT (PowerShell)        " -ForegroundColor Cyan
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host ""

# 1. Admin Privilege Check
if (-not (F_Check_Admin)) {
    F_Write_Log -p_message "ERROR: Administrator privileges required!" -p_color Red
    Write-Host "Please right-click 'run.bat' and select 'Run as administrator'." -ForegroundColor Yellow
    Write-Host "Press any key to exit..."
    $null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
    Exit
}

F_Write_Log -p_message "Service started. Sync interval: $INTERVAL_SECONDS seconds." -p_color Green

# 2. Main Loop
while ($true) {
    Try {
        F_Write_Log -p_message "Syncing system time..." -p_color Gray
        
        # Execute w32tm and capture output/errors
        $process = Start-Process w32tm -ArgumentList "/resync" -NoNewWindow -Wait -PassThru
        
        if ($process.ExitCode -eq 0) {
            F_Write_Log -p_message "Time synchronized successfully!" -p_color Green
        }
        else {
            F_Write_Log -p_message "Sync failed with exit code $($process.ExitCode)." -p_color Red
            F_Write_Log -p_message "Tip: Ensure Windows Time service is running (net start w32time)." -p_color Yellow
        }
    }
    Catch {
        F_Write_Log -p_message "CRITICAL ERROR: $_" -p_color Red
    }

    # Countdown timer for better UX
    Write-Host ""
    $remaining = $INTERVAL_SECONDS
    while ($remaining -gt 0) {
        Write-Host -NoNewline "`rNext sync in $remaining seconds...   "
        Start-Sleep -Seconds 1
        $remaining--
    }
    Write-Host "`r                                      `r" -NoNewline
}
#endregion

#region Footer
# --------------------------------------------------------------------------------------------------
# Code Rules:
#   - Functions: F_Snake_Case
#   - Classes: C_Snake_Case
#   - Constants: SNAKE_CASE
#   - Global Vars: Snake_Case
#   - Local Vars: snake_case
#   - Parameters: p_snake_case
#   - Comments: Single line
#
# Version: 1.1.0
# Date: 2026-02-20
# Developer: Ilkay Beydah Saglam
# --------------------------------------------------------------------------------------------------
#endregion
