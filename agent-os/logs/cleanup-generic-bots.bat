@echo off
echo Suppression des bots generiques...
timeout /t 5 /nobreak >nul
rmdir /s /q "C:\Users\zakaria\AppData\Local\hermes\profiles\config-registrar" 2>nul
rmdir /s /q "C:\Users\zakaria\AppData\Local\hermes\profiles\data-sentinel" 2>nul
rmdir /s /q "C:\Users\zakaria\AppData\Local\hermes\profiles\execution-reconciler" 2>nul
rmdir /s /q "C:\Users\zakaria\AppData\Local\hermes\profiles\meteo" 2>nul
rmdir /s /q "C:\Users\zakaria\AppData\Local\hermes\profiles\risk-governor" 2>nul
rmdir /s /q "C:\Users\zakaria\AppData\Local\hermes\profiles\corpus-servi" 2>nul
echo Suppression terminee.
pause
