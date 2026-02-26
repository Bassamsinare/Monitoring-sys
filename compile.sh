#!/bin/bash

# Smart Home Load Monitor - Compilation Script
# For Java 21 with JavaFX

echo "🔨 Compiling Smart Home Load Monitor..."

# Set JavaFX path (adjust this based on where JavaFX SDK is installed)
# For manual download: Download JavaFX SDK 21 from https://gluonhq.com/products/javafx/
JAVAFX_PATH="/path/to/javafx-sdk-21/lib"

# Alternative: If using system JavaFX (e.g., from package manager)
# JAVAFX_PATH="/usr/share/openjfx/lib"

# Create output directory
mkdir -p out/production/SmartHomeLoadMonitor

# Compile all Java files
find src/main/java -name "*.java" > sources.txt

javac --module-path $JAVAFX_PATH \
      --add-modules javafx.controls,javafx.fxml \
      -d out/production/SmartHomeLoadMonitor \
      @sources.txt

if [ $? -eq 0 ]; then
    echo "✅ Compilation successful!"
    echo ""
    echo "To run the application, use:"
    echo "./run.sh"
else
    echo "❌ Compilation failed!"
    exit 1
fi

rm sources.txt
