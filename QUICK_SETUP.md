# QUICK SETUP GUIDE - Smart Home Load Monitor

## ⚡ 5-Minute Setup for Tomorrow's Presentation

### STEP 1: Check Java (2 minutes)
Open Command Prompt (Windows) or Terminal (Mac/Linux):
```
java -version
```
✅ Should show version 21 or higher
❌ If not installed or wrong version, download from: https://adoptium.net/

### STEP 2: Download JavaFX SDK (2 minutes)
1. Go to: https://gluonhq.com/products/javafx/
2. Download **JavaFX SDK 21** for your OS
3. Extract to a simple path like:
   - Windows: `C:\javafx-sdk-21`
   - Mac/Linux: `/opt/javafx-sdk-21`

### STEP 3: Update Build Scripts (1 minute)

**WINDOWS:**
1. Open `compile.bat` in Notepad
2. Find line 6: `set JAVAFX_PATH=C:\path\to\javafx-sdk-21\lib`
3. Change to YOUR path: `set JAVAFX_PATH=C:\javafx-sdk-21\lib`
4. Save file
5. Do same for `run.bat`

**MAC/LINUX:**
1. Open `compile.sh` in text editor
2. Find line 7: `JAVAFX_PATH="/path/to/javafx-sdk-21/lib"`
3. Change to YOUR path: `JAVAFX_PATH="/opt/javafx-sdk-21/lib"`
4. Save file
5. Do same for `run.sh`
6. Make executable: `chmod +x compile.sh run.sh`

### STEP 4: Build and Run (30 seconds)

**WINDOWS:**
Double-click: `compile.bat` → Wait for success → Double-click: `run.bat`

**MAC/LINUX:**
```bash
./compile.sh
./run.sh
```

## 🎯 Testing for Presentation

### Quick Demo Script:
1. Click "⚙ Settings" → Set mode to "Scripted" → Save
2. Click "▶ Start Monitoring"
3. Watch as it automatically shows all scenarios:
   - Normal operation
   - Kitchen overload (red alerts!)
   - Whole house overload (recommendations appear!)
   - Surge detection
   - Sensor faults
4. Point out the color-coded table, alerts, and socket groups
5. Switch to "Random" mode for live simulation

### What to Highlight:
✅ Real-time monitoring of 13 appliances
✅ Automatic overload detection
✅ Color-coded danger warnings
✅ Load shedding recommendations
✅ Energy cost tracking in Ghana Cedis
✅ Both random and scripted modes

## 🆘 Emergency Troubleshooting

### "Module javafx.controls not found"
→ JavaFX path is wrong in build scripts. Double-check Step 3.

### "javac is not recognized"
→ Java not installed or not in PATH. Reinstall Java 21.

### Scripts won't run
→ Windows: Right-click → "Run as Administrator"
→ Mac/Linux: Did you do `chmod +x`?

### Blank window appears
→ Give it 5 seconds to load
→ Check console for errors

## 📊 For Your Report

**Take these screenshots while running:**
1. Settings dialog (shows configuration options)
2. Normal operation (all green)
3. Overload event (red alerts in table and alerts tab)
4. Load shedding recommendations (bottom tab)
5. Socket groups panel (color-coded status)

**Explain these in report:**
- How you detect overloads (>13A per socket group)
- Surge detection algorithm (delta ≥ threshold)
- Invalid reading validation (≤0 or >max)
- Load shedding priority (non-essential first, sorted by current)
- Energy calculation (P×t in kWh)

## ✨ Pro Tips for Presentation

1. **Start in Scripted mode** - guarantees all scenarios show
2. **Explain as it runs** - point out each scenario as it happens
3. **Show the code briefly** - highlight MonitoringSystem.java
4. **Mention Ghana context** - 13A sockets, GH₵ pricing, inverter limits
5. **Demo both modes** - scripted for completeness, random for realism

## 📞 Last-Minute Help

If something breaks:
1. Delete the `out` folder
2. Rerun compile script
3. Check Java and JavaFX versions match (both 21)
4. Verify paths have no spaces or special characters

---

**YOU'VE GOT THIS! The app is ready to go. Just follow the steps above. 🚀**

Good luck with your presentation tomorrow!
