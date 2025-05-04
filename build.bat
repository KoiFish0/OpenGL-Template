@echo off
setlocal

REM Set build directory
set BUILD_DIR=build

REM Set generator
set GENERATOR="MinGW Makefiles"

REM cleanup
REM rmdir /s /q %BUILD_DIR%

REM Configure the project and export compile_commands.json
echo Configuring project...
cmake -S . -B %BUILD_DIR% -G %GENERATOR% -DCMAKE_EXPORT_COMPILE_COMMANDS=ON

if %ERRORLEVEL% NEQ 0 (
    echo CMake configuration failed.
    exit /b %ERRORLEVEL%
)

REM Build the project
echo Building...
cmake --build %BUILD_DIR%

if %ERRORLEVEL% NEQ 0 (
    echo Build failed.
    exit /b %ERRORLEVEL%
) else (
    echo Build succeeded.
)

REM Copy compile_commands.json to project root
copy %BUILD_DIR%\compile_commands.json compile_commands.json > nul

endlocal
pause

