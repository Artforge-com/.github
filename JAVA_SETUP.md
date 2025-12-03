# Java 17 Setup Guide for ArtForge

## Why Java 17?

ArtForge uses **Spring Boot 3.2.0**, which requires **Java 17 or higher**. If you have Java 11 or lower, you'll see this error:

```
error: release version 17 not supported
```

## Quick Solution

### Step 1: Download Java 17

**Recommended**: Eclipse Temurin (OpenJDK)
- **Download**: https://adoptium.net/temurin/releases/?version=17
- **Select**: 
  - Operating System: Windows
  - Architecture: x64
  - Package Type: JDK
  - Version: 17 (LTS)

**Alternative**: Oracle JDK
- **Download**: https://www.oracle.com/java/technologies/downloads/#java17

### Step 2: Install Java 17

1. Run the downloaded installer (`.msi` file)
2. **Important**: Check "Add to PATH" during installation
3. Complete the installation
4. Restart your Command Prompt or IDE

### Step 3: Verify Installation

Open a **new** Command Prompt and run:

```cmd
java -version
```

**Expected output**:
```
java version "17.0.x" 2024-XX-XX LTS
Java(TM) SE Runtime Environment (build 17.0.x+XX-LTS-XXX)
Java HotSpot(TM) 64-Bit Server VM (build 17.0.x+XX-LTS-XXX, mixed mode, sharing)
```

If you see version 17 or higher, you're good to go! ✅

## Detailed Installation

### Option 1: Eclipse Temurin (Recommended)

1. **Visit**: https://adoptium.net/temurin/releases/?version=17
2. **Select**:
   - Operating System: **Windows**
   - Architecture: **x64**
   - Package Type: **JDK**
   - Version: **17 (LTS)**
3. **Click Download** (`.msi` installer)
4. **Run the installer**:
   - Accept license
   - Choose installation location (default is fine)
   - **Check "Add to PATH"** ✅
   - Click Install
5. **Restart Command Prompt**

### Option 2: Oracle JDK

1. **Visit**: https://www.oracle.com/java/technologies/downloads/#java17
2. **Select**: Windows x64 Installer
3. **Download** and run installer
4. **Check "Add to PATH"** during installation
5. **Restart Command Prompt**

## Setting JAVA_HOME (If Needed)

If Java 17 is installed but not detected:

1. **Find Java installation path**:
   - Default: `C:\Program Files\Eclipse Adoptium\jdk-17.x.x-hotspot`
   - Or: `C:\Program Files\Java\jdk-17`

2. **Set JAVA_HOME**:
   ```cmd
   setx JAVA_HOME "C:\Program Files\Eclipse Adoptium\jdk-17.x.x-hotspot"
   ```
   (Replace with your actual path)

3. **Update PATH**:
   ```cmd
   setx PATH "%PATH%;%JAVA_HOME%\bin"
   ```

4. **Restart Command Prompt**

## Multiple Java Versions

If you need to keep Java 11 for other projects:

### Method 1: Use JAVA_HOME

```cmd
# Set JAVA_HOME to Java 17
setx JAVA_HOME "C:\Program Files\Eclipse Adoptium\jdk-17.x.x-hotspot"

# Make sure Java 17 is first in PATH
setx PATH "%JAVA_HOME%\bin;%PATH%"
```

### Method 2: Use Full Path

When running Maven, use full path:
```cmd
"C:\Program Files\Eclipse Adoptium\jdk-17.x.x-hotspot\bin\java" -version
```

## Verification Steps

### 1. Check Java Version

```cmd
java -version
```

Should show: `java version "17.0.x"` or higher

### 2. Check Java Compiler

```cmd
javac -version
```

Should show: `javac 17.0.x` or higher

### 3. Check Maven Uses Java 17

```cmd
mvn -version
```

Look for: `Java version: 17.0.x`

### 4. Find All Java Installations

```cmd
where java
```

This shows all Java executables in your PATH.

## Troubleshooting

### Problem: Java version still shows 11

**Solution**:
1. Check PATH order:
   ```cmd
   echo %PATH%
   ```
   Java 17's `bin` directory should come before Java 11's

2. Set JAVA_HOME explicitly:
   ```cmd
   set JAVA_HOME=C:\Program Files\Eclipse Adoptium\jdk-17.x.x-hotspot
   set PATH=%JAVA_HOME%\bin;%PATH%
   ```

3. **Restart Command Prompt** (important!)

### Problem: Maven still uses Java 11

**Solution**:
1. Check Maven's Java:
   ```cmd
   mvn -version
   ```

2. If it shows Java 11, set JAVA_HOME:
   ```cmd
   set JAVA_HOME=C:\Program Files\Eclipse Adoptium\jdk-17.x.x-hotspot
   mvn -version
   ```

3. Should now show Java 17

### Problem: "Java not found" after installation

**Solution**:
1. Verify Java is installed:
   ```cmd
   dir "C:\Program Files\Eclipse Adoptium\jdk-17*"
   ```

2. Add to PATH manually:
   ```cmd
   setx PATH "%PATH%;C:\Program Files\Eclipse Adoptium\jdk-17.x.x-hotspot\bin"
   ```

3. Restart Command Prompt

### Problem: Installation fails

**Solution**:
1. Run installer as Administrator
2. Check disk space (need ~500MB)
3. Temporarily disable antivirus
4. Try different installation location

## Alternative: Use Docker

If you prefer not to install Java 17 locally:

```cmd
docker-compose up -d
```

Docker containers include Java 17, so no local installation needed.

## After Installing Java 17

1. ✅ Close all Command Prompt windows
2. ✅ Open a new Command Prompt
3. ✅ Verify: `java -version` shows 17+
4. ✅ Run: `start-services.bat`
5. ✅ Services should start successfully!

## Quick Reference

| Command | Purpose |
|---------|---------|
| `java -version` | Check Java version |
| `javac -version` | Check Java compiler version |
| `mvn -version` | Check Maven and Java version |
| `where java` | Find all Java installations |
| `echo %JAVA_HOME%` | Check JAVA_HOME variable |
| `echo %PATH%` | Check PATH variable |

## Download Links

- **Eclipse Temurin (Recommended)**: https://adoptium.net/temurin/releases/?version=17
- **Oracle JDK**: https://www.oracle.com/java/technologies/downloads/#java17
- **OpenJDK**: https://openjdk.org/install/

---

**Still having issues?** Check the troubleshooting section or verify your installation path.


