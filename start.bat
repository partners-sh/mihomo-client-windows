@echo off
cd /d "%~dp0"
echo Запуск Clash в TUN режиме...
echo.
echo ДЛЯ ВЫХОДА НАЖМИТЕ CTRL+C
echo Не закрывайте окно крестиком!
echo.

:: Запускаем Clash
mihomo-windows-amd64.exe -d .

:: После Ctrl+C выводим инструкцию
echo.
echo ========================================
echo   Clash завершен
echo ========================================
echo.
echo Если интернет не работает:
echo 1. Перезагрузите компьютер
echo 2. Или выполните команды ниже
echo.
echo Команды для восстановления (в cmd от админа):
echo   netsh winsock reset
echo   netsh int ip reset
echo   ipconfig /flushdns
pause