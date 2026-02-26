@echo off
REM Smart Home Load Monitor - Windows Compilation Script

echo Compiling Smart Home Load Monitor...

REM Set JavaFX path - UPDATE THIS PATH to your JavaFX SDK location
set JAVAFX_PATH=C:\path\to\javafx-sdk-21\lib

REM Create output directory
if not exist out\production\SmartHomeLoadMonitor mkdir out\production\SmartHomeLoadMonitor

REM Find and compile all Java files
dir /s /B src\main\java\*.java > sources.txt

javac --module-path %JAVAFX_PATH% ^
      --add-modules javafx.controls,javafx.fxml ^
      -d out\production\SmartHomeLoadMonitor ^
      @sources.txt

if %errorlevel% equ 0 (
    echo.
    echo Compilation successful!
    echo.
    echo To run the application, use: run.bat
) else (
    echo.
    echo Compilation failed!
    pause
    exit /b 1
)

del sources.txt
pause
