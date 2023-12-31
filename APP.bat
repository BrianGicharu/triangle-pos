@echo off

rem Start the Laravel development server in the background
start "Laravel Server" /B php artisan serve

rem Wait for a moment (adjust the timeout value as needed)
timeout /t 5 /nobreak

rem Open Google Chrome with the Laravel application URL
start chrome http://localhost:8000

rem You can adjust the URL based on your Laravel application configuration
rem For example, if your Laravel app is running on a different port, update the URL accordingly

exit
