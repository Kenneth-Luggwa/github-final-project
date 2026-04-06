@echo off
REM Simple Interest Project Launcher for Windows
REM Usage:
REM   simple-interest.bat cli   → Run CLI calculator
REM   simple-interest.bat web   → Launch Flask web app
REM   simple-interest.bat help  → Show this help message

SET COMMAND=%1

IF "%COMMAND%"=="" (
    GOTO HELP
)

IF /I "%COMMAND%"=="cli" (
    ECHO Launching Simple Interest CLI Calculator...
    python simple_interest.py
    GOTO END
)

IF /I "%COMMAND%"=="web" (
    ECHO Launching Flask Web App...
    SET FLASK_APP=app.py
    SET FLASK_ENV=development
    python app.py
    GOTO END
)

IF /I "%COMMAND%"=="help" (
    GOTO HELP
)

ECHO Error: Unknown command "%COMMAND%"
GOTO HELP

:HELP
ECHO Usage: simple-interest.bat [cli|web|help]
ECHO   cli  → Run the CLI calculator
ECHO   web  → Launch the Flask web app
ECHO   help → Show this help message
:END
