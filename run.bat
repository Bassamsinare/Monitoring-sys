@echo off
REM Smart Home Load Monitor - Windows Run Script

echo Starting Smart Home Load Monitor...

REM Set JavaFX path - must match compile.bat
set JAVAFX_PATH=C:\path\to\javafx-sdk-21\lib

java --module-path %JAVAFX_PATH% ^
     --add-modules javafx.controls,javafx.fxml ^
     -cp out\production\SmartHomeLoadMonitor ^
     com.smarthome.SmartHomeLoadMonitor

pause
