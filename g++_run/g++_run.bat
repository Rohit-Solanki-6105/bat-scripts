@REM Made by Solanki Rohit H , command to run directly c or cpp files with their name.exe
@echo off

REM Check if a filename argument is provided
if "%~1"=="" (
    echo No filename provided.
    exit /b
)

REM Accessing the filename argument
set "filename=%~1"

REM Check if the filename has a .c or .cpp extension and change it to .exe
if "%filename:~-2%"==".c" (
    set "filenameEXE=%filename:.c=.exe%"
    call :run
) 
if "%filename:~-4%"==".cpp" (
    set "filenameEXE=%filename:.cpp=.exe%"
    call :run
)

REM Uncomment the line below to display the filename conversion
REM echo Filename: %filename% converted to %filenameEXE%

exit /b

REM Compile and execute the file

:run
g++ %filename% -o %filenameEXE%
.\%filenameEXE%
exit /b