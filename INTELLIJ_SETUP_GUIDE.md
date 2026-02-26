# IntelliJ IDEA Setup Guide - Smart Home Load Monitor

## ⚡ Quick Setup for IntelliJ IDEA (10 Minutes)

### STEP 1: Install Java 21 (5 minutes)

**Already have Java 21?** Check with: `java -version`

**Need to install?**
1. Download Java 21 from: https://adoptium.net/
2. Install and verify: `java -version` should show 21 or higher

---

### STEP 2: Download JavaFX SDK 21 (3 minutes)

1. Go to: **https://gluonhq.com/products/javafx/**
2. Download **JavaFX SDK 21** for your operating system:
   - Windows: javafx-sdk-21-windows.zip
   - Mac: javafx-sdk-21-osx.zip
   - Linux: javafx-sdk-21-linux.zip
3. Extract to a permanent location:
   - Windows: `C:\javafx-sdk-21\`
   - Mac: `/Library/Java/javafx-sdk-21/`
   - Linux: `/opt/javafx-sdk-21/`

**IMPORTANT:** Remember this path - you'll need it!

---

### STEP 3: Open Project in IntelliJ IDEA (2 minutes)

1. **Open IntelliJ IDEA**
2. **File** → **Open**
3. Navigate to and select the `SmartHomeLoadMonitor` folder
4. Click **OK**
5. Wait for IntelliJ to index the project

---

### STEP 4: Add JavaFX Library (3 minutes)

1. **File** → **Project Structure** (or press `Ctrl+Alt+Shift+S` / `Cmd+;` on Mac)

2. In the left sidebar, click **Libraries**

3. Click the **+** button → **Java**

4. Navigate to your JavaFX SDK folder and select the **lib** subfolder:
   - Windows: `C:\javafx-sdk-21\lib`
   - Mac: `/Library/Java/javafx-sdk-21/lib`
   - Linux: `/opt/javafx-sdk-21/lib`

5. Click **OK**

6. When asked "Add to Modules", select **SmartHomeLoadMonitor**, click **OK**

7. Click **Apply**, then **OK**

---

### STEP 5: Configure Run Configuration (2 minutes)

1. **Run** → **Edit Configurations...**

2. Click the **+** button → **Application**

3. Set the following:
   - **Name:** `SmartHomeLoadMonitor`
   - **Main class:** Click **...** button and select `com.smarthome.SmartHomeLoadMonitor`
   - **VM options:** Click **Modify options** → Check **Add VM options**
   
4. In the **VM options** field, paste:
   ```
   --module-path "PATH_TO_YOUR_JAVAFX_SDK/lib" --add-modules javafx.controls,javafx.fxml
   ```
   
   **Replace PATH_TO_YOUR_JAVAFX_SDK with YOUR actual path:**
   
   **Windows example:**
   ```
   --module-path "C:\javafx-sdk-21\lib" --add-modules javafx.controls,javafx.fxml
   ```
   
   **Mac example:**
   ```
   --module-path "/Library/Java/javafx-sdk-21/lib" --add-modules javafx.controls,javafx.fxml
   ```
   
   **Linux example:**
   ```
   --module-path "/opt/javafx-sdk-21/lib" --add-modules javafx.controls,javafx.fxml
   ```

5. Click **Apply**, then **OK**

---

### STEP 6: Run the Application! 🚀

1. Click the **Run** button (green play icon) in the toolbar
   - OR press `Shift+F10` (Windows/Linux) / `Ctrl+R` (Mac)
   - OR right-click `SmartHomeLoadMonitor.java` → **Run**

2. The application window should open!

---

## ✅ VERIFICATION CHECKLIST

After running, you should see:
- ✅ Application window with title "Smart Home Load Monitor - Ghana Edition"
- ✅ Table showing 13 appliances
- ✅ Right panel with House Summary and Socket Groups
- ✅ Bottom tabs for Alerts and Recommendations
- ✅ Toolbar with Start, Stop, Settings buttons

---

## 🎯 TESTING FOR PRESENTATION

### Quick Test (2 minutes):

1. **Click "⚙ Settings"**
   - Change Mode to **SCRIPTED**
   - Click **Save**

2. **Click "▶ Start Monitoring"**

3. **Watch the magic happen!**
   - Steps 0-40: Normal operation (green)
   - Steps 40-80: Kitchen overload (red alerts!)
   - Steps 100-140: Whole house overload (recommendations appear!)
   - Steps 140-160: Surge detection
   - Steps 160-180: Sensor faults

4. **Practice narrating** as scenarios appear

---

## 🔧 TROUBLESHOOTING

### Problem: "Module javafx.controls not found"
**Solution:** 
- VM options path is wrong
- Go back to Step 5 and verify your JavaFX path
- Make sure you're pointing to the `lib` folder
- Use forward slashes `/` even on Windows, or escape backslashes

### Problem: "Cannot find main class"
**Solution:**
- Right-click on `src/main/java` folder
- Select **Mark Directory as** → **Sources Root**

### Problem: "SDK is not specified"
**Solution:**
- **File** → **Project Structure** → **Project**
- Set **SDK** to Java 21
- Click **Apply**

### Problem: Red underlines in code
**Solution:**
- Wait for IntelliJ to finish indexing (bottom-right corner)
- **File** → **Invalidate Caches** → **Invalidate and Restart**

### Problem: Application won't start
**Solution:**
- Check Java version: `java -version` (must be 21+)
- Verify JavaFX library is added (Step 4)
- Check VM options have correct path (Step 5)

---

## 📊 KEYBOARD SHORTCUTS IN INTELLIJ

Useful shortcuts while coding:
- `Ctrl+Space` - Code completion
- `Ctrl+B` - Go to declaration
- `Shift+F10` - Run application
- `Alt+Insert` - Generate code
- `Ctrl+Alt+L` - Reformat code

---

## 💡 TIPS FOR TOMORROW'S PRESENTATION

### Before You Start:
1. ✅ Run the app once tonight to verify it works
2. ✅ Practice with Scripted mode (shows all scenarios)
3. ✅ Know where Settings is (to switch modes)
4. ✅ Have IntelliJ open and ready

### During Presentation:
1. **Show the code briefly** (if asked):
   - Navigate to `SmartHomeLoadMonitor.java`
   - Highlight key methods like `checkSocketGroupStatus()`
   
2. **Run the app**:
   - Click Run button (or `Shift+F10`)
   - Open Settings → Set to SCRIPTED
   - Click Start
   - Narrate what's happening

3. **Explain the architecture**:
   - Model: Appliance, Alert, Settings
   - Controller: MonitoringSystem, Simulator
   - View: Main app + SettingsDialog

---

## 📁 PROJECT STRUCTURE IN INTELLIJ

```
SmartHomeLoadMonitor/
├── .idea/                          (IntelliJ config)
├── src/main/java/com/smarthome/
│   ├── SmartHomeLoadMonitor.java  (Main application - START HERE)
│   ├── model/
│   │   ├── Appliance.java         (Appliance data model)
│   │   ├── Alert.java             (Alert model)
│   │   └── Settings.java          (Settings model)
│   ├── controller/
│   │   ├── MonitoringSystem.java  (Core monitoring logic)
│   │   └── Simulator.java         (Sensor simulation)
│   └── view/
│       └── SettingsDialog.java    (Settings UI)
├── out/                            (Compiled classes)
└── SmartHomeLoadMonitor.iml        (IntelliJ module file)
```

---

## 🎓 FOR YOUR REPORT

### Screenshots to Capture (from IntelliJ):

1. **Code View**: Show `MonitoringSystem.java` with key methods
2. **Running App**: Normal operation (everything green)
3. **Overload Event**: Red alerts visible
4. **Recommendations**: Load shedding suggestions
5. **Settings**: Configuration dialog

### Key Points to Mention:

- **Language**: Java 21 with JavaFX
- **IDE**: IntelliJ IDEA
- **Architecture**: MVC pattern
- **Lines of Code**: ~1,100
- **Features**: Real-time monitoring, overload detection, surge detection, cost tracking

---

## 🆘 LAST-MINUTE HELP

If something breaks tomorrow morning:

1. **Close IntelliJ completely**
2. **Delete the `out` folder**
3. **Reopen IntelliJ**
4. **Build** → **Rebuild Project**
5. **Run again**

---

## ✨ YOU'RE READY!

Everything is set up and ready to go. Just:
1. Follow Steps 1-6 tonight
2. Test run once
3. Practice with Scripted mode
4. You'll do great tomorrow! 🚀

**Questions? Issues?** All the code is complete and tested. If IntelliJ gives you trouble, the issue is always either:
- Java version (needs 21+)
- JavaFX library not added
- VM options path incorrect

Fix those three and you're golden!

---

**Good luck with your presentation! 💪**
