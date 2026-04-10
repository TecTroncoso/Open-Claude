@echo off
REM OpenClaude Launcher for Windows
REM Este wrapper ejecuta OpenClaude con Node.js

SET SCRIPT_DIR=%~dp0
SET CLI_PATH=%SCRIPT_DIR%dist\cli.mjs

REM Verificar que el archivo existe
if not exist "%CLI_PATH%" (
    echo Error: No se encuentra dist\cli.mjs
    echo Por favor ejecuta: bun run build
    pause
    exit /b 1
)

REM Verificar que Node.js está instalado
where node >nul 2>nul
if %ERRORLEVEL% neq 0 (
    echo Error: Node.js no está instalado
    echo Descárgalo de: https://nodejs.org
    pause
    exit /b 1
)

REM Ejecutar OpenClaude
node "%CLI_PATH%" %*
