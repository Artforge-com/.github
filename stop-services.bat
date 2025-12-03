@echo off
setlocal enabledelayedexpansion
REM ArtForge Services Stop Script (Windows Batch)
REM This script stops all ArtForge services

echo ========================================
echo   Stopping ArtForge Services
echo ========================================
echo.

REM Stop by window title (most reliable method)
echo Closing service windows...
taskkill /FI "WINDOWTITLE eq ArtForge Auth Service*" /T /F >nul 2>&1
if %ERRORLEVEL% EQU 0 (echo   - Auth Service stopped) else (echo   - Auth Service was not running)

taskkill /FI "WINDOWTITLE eq ArtForge Backend Service*" /T /F >nul 2>&1
if %ERRORLEVEL% EQU 0 (echo   - Backend Service stopped) else (echo   - Backend Service was not running)

taskkill /FI "WINDOWTITLE eq ArtForge Gateway*" /T /F >nul 2>&1
if %ERRORLEVEL% EQU 0 (echo   - Gateway stopped) else (echo   - Gateway was not running)

taskkill /FI "WINDOWTITLE eq ArtForge Frontend*" /T /F >nul 2>&1
if %ERRORLEVEL% EQU 0 (echo   - Frontend stopped) else (echo   - Frontend was not running)

echo.
echo All services stopped.
echo.
echo Note: If services are still running, you may need to close the windows manually.
echo.
pause


