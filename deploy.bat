@echo off
echo Deploying Birthday Website to GitHub...
echo.

cd /d C:\Users\mmatt\birthday_project

echo Adding files...
git add .

echo Committing changes...
for /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%a-%%b)
for /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a%%b)
git commit -m "Update: %mydate% at %mytime%"

echo Pushing to GitHub...
git push origin main

echo.
echo ✅ Deployment complete! Changes will be live in 1-2 minutes.
echo 🌐 Check your Netlify dashboard for the live URL.
echo.
pause
