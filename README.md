# ArtForge Setup Documentation

This directory contains all setup documentation and scripts for the ArtForge project.

## 📚 Documentation Files

- **[SETUP.md](SETUP.md)** - Complete setup guide with step-by-step instructions
- **[REQUIREMENTS.md](REQUIREMENTS.md)** - System requirements and prerequisites
- **[JAVA_SETUP.md](JAVA_SETUP.md)** - Detailed Java 17 installation guide

## 🚀 Quick Start

### Windows Users

1. **Read [SETUP.md](SETUP.md)** for complete setup instructions
2. **Install prerequisites** (Java 17, Maven, Node.js)
3. **Run the startup script**:
   ```cmd
   .github\start-services.bat
   ```

### Prerequisites Checklist

Before running the startup script, ensure you have:

- [ ] **Java 17+** installed (see [JAVA_SETUP.md](JAVA_SETUP.md))
- [ ] **Maven 3.6+** installed
- [ ] **Node.js 18+** installed
- [ ] **npm 9+** installed (comes with Node.js)

### Verify Installation

```cmd
java -version    # Should show 17 or higher
mvn -version     # Should show 3.6 or higher
node -v          # Should show 18 or higher
npm -v           # Should show 9 or higher
```

## 📁 Files in This Directory

| File | Description |
|------|-------------|
| `SETUP.md` | Main setup guide with detailed instructions |
| `REQUIREMENTS.md` | System requirements and version compatibility |
| `JAVA_SETUP.md` | Java 17 installation and troubleshooting guide |
| `start-services.bat` | Windows batch script to start all services |
| `stop-services.bat` | Windows batch script to stop all services |
| `README.md` | This file |

## 🎯 Getting Started

1. **Start here**: Read [SETUP.md](SETUP.md)
2. **If Java issues**: See [JAVA_SETUP.md](JAVA_SETUP.md)
3. **For requirements**: Check [REQUIREMENTS.md](REQUIREMENTS.md)
4. **Run setup**: Execute `start-services.bat`

## 🆘 Need Help?

- **Setup issues**: See [SETUP.md](SETUP.md) troubleshooting section
- **Java problems**: See [JAVA_SETUP.md](JAVA_SETUP.md)
- **Requirements**: See [REQUIREMENTS.md](REQUIREMENTS.md)
- **General help**: Check the main [README.md](../README.md)

## 📝 Scripts

### start-services.bat

Starts all ArtForge services:
- Auth Service (Port 8081)
- Backend Service (Port 8082)
- Gateway (Port 8080)
- Frontend (Port 3000)

**Usage**:
```cmd
.github\start-services.bat
```

### stop-services.bat

Stops all ArtForge services by closing their windows.

**Usage**:
```cmd
.github\stop-services.bat
```

## 🔗 Related Documentation

- Main project [README.md](../README.md)
- [ARCHITECTURE.md](../ARCHITECTURE.md) - System architecture
- [QUICKSTART.md](../QUICKSTART.md) - Quick start guide
- [INTEGRATION.md](../INTEGRATION.md) - Service integration details

---

**Ready to start?** Begin with [SETUP.md](SETUP.md)!


