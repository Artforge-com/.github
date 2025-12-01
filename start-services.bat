@echo off
setlocal enabledelayedexpansion
REM ArtForge Services Startup Script (Windows Batch)
REM This script starts all ArtForge services locally without Docker

echo ========================================
echo   ArtForge Services Startup Script
echo ========================================
echo.

REM Check prerequisites
where java >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: Java not found. Please install Java 17+
    echo.
    echo Download from: https://adoptium.net/temurin/releases/?version=17
    echo See JAVA_SETUP.md for detailed instructions.
    echo.
    pause
    exit /b 1
)

REM Check Java version (must be 17 or higher)
echo Checking Java version...
java -version 2>&1 | findstr /i "version" > temp_java_version.txt
for /f "tokens=3" %%a in (temp_java_version.txt) do (
    set JAVA_VERSION=%%a
    set JAVA_VERSION=!JAVA_VERSION:"=!
    for /f "tokens=1 delims=._" %%b in ("!JAVA_VERSION!") do set JAVA_MAJOR=%%b
)
del temp_java_version.txt >nul 2>&1

if "%JAVA_MAJOR%" LSS "17" (
    echo.
    echo ERROR: Java 17 or higher is required!
    echo Current Java version: %JAVA_VERSION%
    echo.
    echo Please install Java 17 or higher from:
    echo   https://adoptium.net/ or https://www.oracle.com/java/technologies/downloads/
    echo.
    echo See JAVA_SETUP.md for detailed installation instructions.
    echo.
    echo After installing Java 17, make sure it's in your PATH or set JAVA_HOME.
    echo Restart Command Prompt after installation.
    echo.
    pause
    exit /b 1
)
echo Java version check passed: %JAVA_VERSION%
echo.

where mvn >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: Maven not found. Please install Maven 3.6+
    echo.
    echo Download from: https://maven.apache.org/download.cgi
    echo.
    pause
    exit /b 1
)

where node >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: Node.js not found. Please install Node.js 18+
    echo.
    echo Download from: https://nodejs.org/
    echo.
    pause
    exit /b 1
)

where npm >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: npm not found. Please install Node.js 18+
    echo.
    echo npm is included with Node.js installation.
    echo.
    pause
    exit /b 1
)

echo Prerequisites check passed!
echo.

REM Get the script directory (parent of .github)
set SCRIPT_DIR=%~dp0..
cd /d "%SCRIPT_DIR%"

echo Starting services in separate windows...
echo.

REM Start Auth Service
echo Starting Auth Service (Port 8081)...
start "ArtForge Auth Service" cmd /k "cd /d %SCRIPT_DIR%\artforge-auth && echo ======================================== && echo   ArtForge Auth Service - Port 8081 && echo ======================================== && mvn spring-boot:run"
timeout /t 5 /nobreak >nul

REM Start Backend Service
echo Starting Backend Service (Port 8082)...
start "ArtForge Backend Service" cmd /k "cd /d %SCRIPT_DIR%\artforge-backend && echo ======================================== && echo   ArtForge Backend Service - Port 8082 && echo ======================================== && mvn spring-boot:run"
timeout /t 5 /nobreak >nul

REM Start Gateway
echo Starting Gateway (Port 8080)...
start "ArtForge Gateway" cmd /k "cd /d %SCRIPT_DIR%\artforge-gateway && echo ======================================== && echo   ArtForge Gateway - Port 8080 && echo ======================================== && mvn spring-boot:run"
timeout /t 5 /nobreak >nul

REM Check if frontend node_modules exists
if not exist "%SCRIPT_DIR%\artforge-frontend\node_modules" (
    echo Installing frontend dependencies...
    cd /d "%SCRIPT_DIR%\artforge-frontend"
    call npm install
    if %ERRORLEVEL% NEQ 0 (
        echo.
        echo ERROR: Failed to install frontend dependencies.
        echo Please check your Node.js and npm installation.
        echo.
        pause
        exit /b 1
    )
    cd /d "%SCRIPT_DIR%"
)

REM Start Frontend
echo Starting Frontend (Port 3000)...
start "ArtForge Frontend" cmd /k "cd /d %SCRIPT_DIR%\artforge-frontend && echo ======================================== && echo   ArtForge Frontend - Port 3000 && echo ======================================== && npm run dev"

echo.
echo ========================================
echo   Services Started
echo ========================================
echo.
echo Services are starting in separate windows.
echo Please wait 30-60 seconds for all services to be ready.
echo.
echo Service URLs:
echo   Frontend:     http://localhost:3000
echo   Gateway:      http://localhost:8080
echo   Auth API:     http://localhost:8080/api/auth
echo   Backend API:  http://localhost:8080/api/users
echo.
echo Health Checks:
echo   Gateway:      http://localhost:8080/actuator/health
echo   Auth:         http://localhost:8081/actuator/health
echo   Backend:      http://localhost:8082/actuator/health
echo.
echo To stop services:
echo   - Close the command windows, or
echo   - Run stop-services.bat
echo.
echo For troubleshooting, see SETUP.md
echo.
pause

