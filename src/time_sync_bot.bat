@echo off
:loop

start /b cmd /c "w32tm /resync"

echo TIME UPDATE BOT
echo Time is synchronized. Time until next sync:
timeout /t 125

cls

goto loop
exit
