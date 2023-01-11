@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION

ECHO.
ECHO.

where.exe python > NUL

IF ERRORLEVEL 1 (
   ECHO Python is not installed
   EXIT 1
)

cd /D "%~dp0"

rem ECHO %*
SET _all=%*
rem CALL SET args=%%_all:*%2=%%
SET args=%2%args%

SET _install="F"
IF NOT EXIST venv set _install="T"
IF "%1" == "--install" SET _install="T" 
IF %_install% == "T" (
    IF NOT EXIST venv (
        ECHO Creating virtual environment
        python -m venv venv
    )

    CALL venv/Scripts/activate.bat

    ECHO Installing dependencies
    CALL pip install -r requirements.txt --upgrade

) 

ECHO Activating virtual environment
CALL venv/Scripts/activate.bat

ECHO Starting Server with args: %*
ECHO.
uvicorn app.main:app  %*
