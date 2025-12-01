# ArtForge System Requirements

## Required Software

### Java
- **Version**: Java 17 or higher (REQUIRED)
- **Download**: https://adoptium.net/temurin/releases/?version=17
- **Why**: Spring Boot 3.2.0 requires Java 17+
- **Installation**: See [JAVA_SETUP.md](JAVA_SETUP.md)

### Maven
- **Version**: 3.6 or higher
- **Download**: https://maven.apache.org/download.cgi
- **Purpose**: Java build tool and dependency management

### Node.js
- **Version**: 18 or higher (16+ works with Vite 4)
- **Download**: https://nodejs.org/
- **Purpose**: Frontend development and build tool

### npm
- **Version**: 9 or higher
- **Included**: Automatically installed with Node.js
- **Purpose**: Node.js package manager

## System Requirements

### Operating System
- **Windows**: Windows 10 or higher
- **RAM**: Minimum 4GB (8GB recommended)
- **Disk Space**: At least 2GB free space
- **Network**: Internet connection for downloading dependencies

## Quick Verification

Run these commands in Command Prompt to verify your setup:

```cmd
java -version
# Expected: java version "17.0.x" or higher

mvn -version
# Expected: Apache Maven 3.6.x or higher

node -v
# Expected: v18.x.x or higher (v16.x.x works with Vite 4)

npm -v
# Expected: 9.x.x or higher
```

## Installation Priority

If you encounter errors, install in this order:

1. **Java 17** (Highest Priority)
   - Required for all backend services
   - See [JAVA_SETUP.md](JAVA_SETUP.md) for detailed instructions

2. **Maven 3.6+**
   - Required for building Java services
   - Download from Apache Maven website
   - Add to PATH environment variable

3. **Node.js 18+**
   - Required for frontend
   - Download installer from nodejs.org
   - Installer automatically adds to PATH

## Version Compatibility

| Component | Minimum | Recommended | Notes |
|-----------|---------|-------------|-------|
| Java | 17 | 17+ | Spring Boot 3.2.0 requirement |
| Maven | 3.6 | 3.8+ | Build tool |
| Node.js | 16 | 18+ | Vite 4 works with 16, Vite 5 needs 18+ |
| npm | 9 | 9+ | Package manager |

## Optional Software

### Docker (Optional)
- **Purpose**: Containerized deployment
- **When to use**: If you prefer not to install Java locally
- **Download**: https://www.docker.com/get-started

### IDE (Recommended)
- **IntelliJ IDEA**: For Java development
- **VS Code**: For frontend development
- **Eclipse**: Alternative Java IDE

## Troubleshooting Installation

### Java Issues

**Problem**: `java -version` shows Java 11 or lower

**Solution**: 
1. Download Java 17 from https://adoptium.net/
2. Install and check "Add to PATH"
3. Restart Command Prompt
4. Verify: `java -version` shows 17+

See [JAVA_SETUP.md](JAVA_SETUP.md) for detailed instructions.

### Maven Issues

**Problem**: `mvn -version` not recognized

**Solution**:
1. Download Maven from https://maven.apache.org/download.cgi
2. Extract to a folder (e.g., `C:\Program Files\Apache\maven`)
3. Add `bin` directory to PATH:
   ```cmd
   setx PATH "%PATH%;C:\Program Files\Apache\maven\bin"
   ```
4. Restart Command Prompt
5. Verify: `mvn -version`

### Node.js Issues

**Problem**: `node -v` not recognized

**Solution**:
1. Download Node.js installer from https://nodejs.org/
2. Run installer
3. Check "Add to PATH" during installation
4. Restart Command Prompt
5. Verify: `node -v` and `npm -v`

## Alternative: Docker

If you don't want to install Java, Maven, or Node.js locally:

1. Install Docker Desktop
2. Run: `docker-compose up -d`
3. All services run in containers

This requires Docker but not local Java/Node.js installation.

## After Installation

1. **Close all Command Prompt windows**
2. **Open a new Command Prompt**
3. **Verify all tools**:
   ```cmd
   java -version
   mvn -version
   node -v
   npm -v
   ```
4. **Run setup script**: `start-services.bat`

## Getting Help

If you encounter issues:

1. Check [JAVA_SETUP.md](JAVA_SETUP.md) for Java-specific help
2. Review [SETUP.md](SETUP.md) for setup instructions
3. Check service logs for specific errors
4. Verify all prerequisites are installed correctly

---

**Ready to proceed?** See [SETUP.md](SETUP.md) for the complete setup guide.

