@echo on
@echo off
title Protected by 5X500 Password protection
color 03
echo 5X500 Password protection Verifying..
if exist "%temp%\CV%USERNAME%-%date%.log" (
    set /p pass=<%temp%\CV%USERNAME%-%date%.log
    goto :verif
) else (
     goto :new
)
pause
:new
cls
echo SEEMS LIKE YOUR NEW!
echo Choose your password:
set /p pass=
echo %pass%> %temp%\CV%USERNAME%-%date%.log

:verif
cls
echo Protected by 5X500 Password protection
echo.
set /p msg=Password: 
if "%msg%"=="%pass%" (
    cls
    goto :start
) else (
    echo.
    echo Sorry this is the wrong password.
    echo Try again.
    goto :verif
)

:Start
REM ----------------------------START OF YOUR SCRIPT
