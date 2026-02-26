# Smart Home Load Monitor - IntelliJ IDEA Edition

> **For Tomorrow's Presentation**: See `INTELLIJ_SETUP_GUIDE.md` for step-by-step setup!

## 🎯 Project Overview

A JavaFX desktop application that monitors electrical load on 13A socket outlets in Ghanaian homes, detects dangerous overload conditions, and provides intelligent load shedding recommendations.

### Key Features
- ✅ Real-time monitoring of 13 appliances
- ✅ Socket group overload detection (>13A per group)
- ✅ Whole house limit monitoring (default 40A)
- ✅ Surge detection (configurable threshold)
- ✅ Invalid sensor reading validation
- ✅ Energy consumption tracking (kWh)
- ✅ Cost estimation (Ghana Cedis - GH₵)
- ✅ Intelligent load shedding recommendations
- ✅ Dual simulation modes: Random & Scripted

---

## 🚀 Quick Start (IntelliJ)

### Prerequisites
- ✅ Java 21 or higher
- ✅ JavaFX SDK 21
- ✅ IntelliJ IDEA (Community or Ultimate)

### Setup Steps
1. **Download JavaFX SDK 21** from https://gluonhq.com/products/javafx/
2. **Open project** in IntelliJ IDEA
3. **Add JavaFX library**: File → Project Structure → Libraries → Add JavaFX SDK lib folder
4. **Configure VM options**: Run → Edit Configurations → Add VM options:
   ```
   --module-path "PATH_TO_JAVAFX/lib" --add-modules javafx.controls,javafx.fxml
   ```
5. **Run** `SmartHomeLoadMonitor.java`

**Detailed instructions**: See `INTELLIJ_SETUP_GUIDE.md`

---

## 📊 Implemented Scenarios

### Scenario 1: Normal Operation
- All appliances within safe limits
- Green status indicators
- No alerts

### Scenario 2: Socket Group Overload (>13A)
- Red alerts when group exceeds 13A
- Highest consumer highlighted
- Example: Kitchen with Refrigerator + Microwave + Kettle + Blender = 29A

### Scenario 3: Warning State (10-13A)
- Yellow warning indicators
- Alert: "Avoid adding high power appliances"

### Scenario 4: Whole House Overload
- Total current exceeds main limit
- Load shedding recommendations generated
- Prioritizes non-essential appliances

### Scenario 5: Surge Detection
- Detects sudden current increases ≥ threshold
- Purple surge indicators
- Example: AC startup surge of 4.5A

### Scenario 6: Invalid Sensor Readings
- Negative readings detected
- Readings exceeding max current flagged
- Gray invalid status
- Excluded from calculations

### Scenario 7: Energy & Cost Tracking
- Continuous kWh accumulation
- Real-time cost in Ghana Cedis
- Session tracking with reset

---

## 🎮 How to Use

### For Presentation (Recommended):

1. **Open Settings** (⚙ button)
2. **Set mode to "SCRIPTED"**
3. **Click "▶ Start Monitoring"**
4. **Watch** as all scenarios play automatically in sequence:
   - 0-40s: Normal
   - 40-80s: Kitchen overload
   - 80-100s: Warning
   - 100-140s: Whole house overload + recommendations
   - 140-160s: Surge events
   - 160-180s: Invalid readings
   - 180-200s: Back to normal

### For Testing (Random Mode):

1. **Keep Settings** on "RANDOM" (default)
2. **Click "▶ Start Monitoring"**
3. **Observe** realistic random behavior with occasional events

---

## 🏗️ Architecture (MVC Pattern)

### Model Layer (`model/`)
- **Appliance.java**: Appliance data with current, status, priority
- **Alert.java**: Timestamped alerts with severity levels
- **Settings.java**: User configuration (voltage, limits, tariff)

### Controller Layer (`controller/`)
- **MonitoringSystem.java**: Core logic (250 lines)
  - Socket group monitoring
  - Overload detection
  - Surge detection
  - Load shedding algorithm
  - Energy/cost calculations
- **Simulator.java**: Sensor simulation (200 lines)
  - Random mode
  - Scripted scenario playback

### View Layer (`view/`)
- **SmartHomeLoadMonitor.java**: Main application (400 lines)
  - JavaFX UI
  - Real-time updates
  - Table, charts, alerts
- **SettingsDialog.java**: Configuration dialog (100 lines)

**Total**: ~1,100 lines of Java code

---

## 📋 Appliances Monitored

| Group | Appliances | Max Current | Priority |
|-------|-----------|-------------|----------|
| **Kitchen** | Refrigerator | 10A | Essential |
| | Microwave | 13A | Non-essential |
| | Electric Kettle | 13A | Non-essential |
| | Blender | 5A | Non-essential |
| **Living Room** | TV | 3A | Non-essential |
| | Air Conditioner | 12A | Non-essential |
| | Fan | 1A | Non-essential |
| **Bedroom** | Bedroom AC | 12A | Non-essential |
| | Laptop Charger | 2A | Essential |
| | Phone Charger | 0.5A | Essential |
| **Bathroom** | Water Heater | 13A | Essential |
| **Utility** | Iron | 10A | Non-essential |
| | Washing Machine | 10A | Non-essential |

---

## ⚙️ Configuration

Default settings (Ghana-specific):
- **Voltage**: 230V
- **Main Limit**: 40A (mains) or 15A (inverter)
- **Surge Threshold**: 3.0A
- **Tariff**: GH₵ 1.5 per kWh
- **Simulation Mode**: Random

All settings are user-configurable via the Settings dialog.

---

## 🧪 Testing in IntelliJ

### Run from IDE:
- Click green **Run** button
- Or press `Shift+F10` (Windows/Linux) / `Ctrl+R` (Mac)
- Or right-click `SmartHomeLoadMonitor.java` → Run

### Debug Mode:
- Click **Debug** button (bug icon)
- Set breakpoints in code
- Step through logic

### View Console Output:
- Alert messages
- Error logs
- Simulation state

---

## 📸 Screenshots for Report

Capture these from IntelliJ:

1. **Code view**: `MonitoringSystem.java` showing key methods
2. **Normal operation**: Green status, no alerts
3. **Kitchen overload**: Red alerts, highlighted appliances
4. **Load shedding**: Recommendations tab with numbered list
5. **Surge event**: Purple surge alert in alerts tab
6. **Settings dialog**: Configuration options
7. **Project structure**: Package explorer showing MVC layout

---

## 🐛 Troubleshooting in IntelliJ

### JavaFX Issues:
- **Problem**: "Module not found"
- **Fix**: Verify JavaFX library added and VM options correct

### Build Issues:
- **Problem**: Compilation errors
- **Fix**: File → Invalidate Caches → Invalidate and Restart

### Run Configuration Issues:
- **Problem**: Can't find main class
- **Fix**: Mark `src/main/java` as Sources Root

### General Issues:
- Delete `out/` folder
- Build → Rebuild Project
- Check Java version: File → Project Structure → Project → SDK

---

## 📚 Key Classes to Review

For code walkthrough during presentation:

### `MonitoringSystem.java`
Show these methods:
- `checkSocketGroupStatus()` - Overload detection
- `detectSurges()` - Surge detection algorithm
- `generateRecommendations()` - Load shedding logic

### `Simulator.java`
Show these methods:
- `simulateScripted()` - Scenario playback
- `kitchenOverload()` - Overload generation

### `SmartHomeLoadMonitor.java`
Show these methods:
- `createApplianceTable()` - UI table setup
- `updateUI()` - Real-time updates

---

## 📝 For Your Report

### Implementation Highlights:
- MVC design pattern
- JavaFX for responsive UI
- ObservableList for automatic updates
- Timer-based simulation loop (1 second interval)
- Color-coded visual feedback
- Priority-based load shedding
- Ghana-specific electrical standards

### Testing Methodology:
- Unit testing with scripted scenarios
- Random testing for edge cases
- UI verification with IntelliJ debugger
- Manual testing of all 7 scenarios

### Technical Achievements:
- Real-time monitoring without lag
- Accurate energy calculations
- Intelligent recommendation algorithm
- Professional UI design
- Comprehensive error handling

---

## 🎓 Academic Context

**Course**: Mini Project  
**Topic**: Smart Home Load Monitor for Ghanaian Homes Using 13A Socket Outlets  
**Technology Stack**: Java 21 + JavaFX  
**Development Environment**: IntelliJ IDEA  
**Target Users**: Ghanaian homeowners  
**Purpose**: Prevent breaker trips, manage electricity costs, enhance safety  

---

## 📞 Support

### Common Questions:

**Q: Why IntelliJ?**  
A: Professional IDE with excellent JavaFX support, debugging tools, and Maven integration.

**Q: Can I use Eclipse or NetBeans?**  
A: Yes, but setup differs. IntelliJ recommended for easiest JavaFX configuration.

**Q: How do I show the code during presentation?**  
A: Navigate in Project Explorer, click files, use `Ctrl+B` to jump to methods.

**Q: Can I export as JAR?**  
A: Yes! Build → Build Artifacts → SmartHomeLoadMonitor:jar → Build

---

## ✅ Pre-Presentation Checklist

- [ ] Java 21 installed and verified
- [ ] JavaFX SDK 21 downloaded
- [ ] Project opens in IntelliJ without errors
- [ ] JavaFX library added to project
- [ ] Run configuration set with VM options
- [ ] Application runs successfully
- [ ] Tested Scripted mode (all scenarios visible)
- [ ] Tested Random mode (works smoothly)
- [ ] Screenshots captured
- [ ] Report template filled
- [ ] Code walkthrough practiced

---

## 🚀 You're Ready!

Everything is configured for IntelliJ IDEA. Just follow the setup guide, test run once, and you're good to go for tomorrow's presentation!

**Need help?** Check `INTELLIJ_SETUP_GUIDE.md` for detailed step-by-step instructions.

**Good luck! 💪🎓**
