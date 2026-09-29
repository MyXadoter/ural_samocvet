@echo off
setlocal
cd /d "%~dp0"
where py >nul 2>nul
if %errorlevel%==0 (
  py -3 -m http.server 4173 --directory dist
) else (
  python -m http.server 4173 --directory dist
)
endlocal

