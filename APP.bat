@echo off

powershell Start-Process -FilePath "%0" -Verb RunAs

set PORT=8000
set PROXY_HOST=127.0.0.1
set PROXY_PORT=8000

echo Starting Laravel app on port %PORT%...

REM Start Laravel application
start "Laravel App" php artisan serve

REM Wait for a moment to ensure Laravel is up and running
timeout /t 5

REM Open the app in a proxy window
start electron/chromedriver.exe http://%PROXY_HOST%:%PROXY_PORT%"


