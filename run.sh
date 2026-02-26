#!/bin/bash

# Smart Home Load Monitor - Run Script
# For Java 21 with JavaFX

echo "🚀 Starting Smart Home Load Monitor..."

# Set JavaFX path (must match compile.sh)
JAVAFX_PATH="/path/to/javafx-sdk-21/lib"

# Alternative: If using system JavaFX
# JAVAFX_PATH="/usr/share/openjfx/lib"

java --module-path $JAVAFX_PATH \
     --add-modules javafx.controls,javafx.fxml \
     -cp out/production/SmartHomeLoadMonitor \
     com.smarthome.SmartHomeLoadMonitor

