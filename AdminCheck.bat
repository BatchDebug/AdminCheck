@echo off
setlocal
title Admin Check by BatchDebug
set "vbsFile=%temp%\AdminCheckErrorMsg.vbs"
net session >nul 2>&1
if %errorlevel% neq 0 (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    net session >nul 2>&1
    exit /b
)
title Example Title
echo Running as an Administrator.
:: Place any additional commands here
pause
exit /b
