@echo off
echo Восстановление интернета после Clash TUN...
echo.

:: Убить все процессы Clash
taskkill /f /im mihomo-windows-amd64.exe >nul 2>&1

:: Сброс сетевых настроек
netsh winsock reset
netsh int ip reset
netsh interface ipv4 reset
netsh interface ipv6 reset

:: Перезапуск DNS
net stop dnscache >nul 2>&1
net start dnscache >nul 2>&1

:: Очистка кэша
ipconfig /flushdns
ipconfig /release
ipconfig /renew

echo.
echo Выполните команды:
echo 1. netsh winsock reset
echo 2. netsh int ip reset
echo 3. Перезагрузите компьютер
echo.
pause