# ArtForge Setup Guide

Complete setup guide for the ArtForge application on Windows.

## 📋 Prerequisites

Before starting, ensure you have the following installed:

| Software | Version | Download |
|----------|---------|----------|
| **Java** | 17 or higher | [Eclipse Temurin](https://adoptium.net/temurin/releases/?version=17) |
| **Maven** | 3.6+ | [Apache Maven](https://maven.apache.org/download.cgi) |
| **Node.js** | 18+ (16+ works with Vite 4) | [Node.js](https://nodejs.org/) |
| **npm** | 9+ | (Included with Node.js) |

### Verify Installation

Open Command Prompt and run:

```cmd
java -version    # Should show: java version "17.x.x" or higher
mvn -version     # Should show: Apache Maven 3.6.x or higher
node -v          # Should show: v18.x.x or higher
npm -v           # Should show: 9.x.x or higher
```

## 🚀 Quick Start

### Step 1: Install Prerequisites

If any prerequisites are missing:

1. **Java 17**: See [JAVA_SETUP.md](JAVA_SETUP.md) for detailed instructions
2. **Maven**: Download and extract, add to PATH
3. **Node.js**: Download installer from nodejs.org, run installer

### Step 2: Clone/Download the Project

```cmd
# If using Git
git clone <repository-url>
cd ArtForge

# Or extract the project to a folder
```

### Step 3: Start All Services

Navigate to the project root directory and run:

```cmd
start-services.bat
```

This script will:
- ✅ Check all prerequisites
- ✅ Verify Java 17 is installed
- ✅ Start Auth Service (Port 8081)
- ✅ Start Backend Service (Port 8082)
- ✅ Start Gateway (Port 8080)
- ✅ Install frontend dependencies (if needed)
- ✅ Start Frontend (Port 3000)

### Step 4: Access the Application

After services start (wait 30-60 seconds):

- **Frontend**: http://localhost:3000
- **Gateway**: http://localhost:8080
- **Auth API**: http://localhost:8080/api/auth
- **Backend API**: http://localhost:8080/api/users

## 📁 Project Structure

```
ArtForge/
├── artforge-frontend/    # React frontend
├── artforge-gateway/     # API Gateway
├── artforge-auth/        # Authentication service
├── artforge-backend/     # Main backend service
├── start-services.bat    # Windows startup script
└── stop-services.bat     # Windows stop script
```

## 🔧 Manual Setup (If Script Fails)

### 1. Start Auth Service

Open a new Command Prompt window:

```cmd
cd ArtForge\artforge-auth
mvn spring-boot:run
```

Wait for: `Started AuthApplication in X.XXX seconds`

### 2. Start Backend Service

Open another Command Prompt window:

```cmd
cd ArtForge\artforge-backend
mvn spring-boot:run
```

Wait for: `Started BackendApplication in X.XXX seconds`

### 3. Start Gateway

Open another Command Prompt window:

```cmd
cd ArtForge\artforge-gateway
mvn spring-boot:run
```

Wait for: `Started GatewayApplication in X.XXX seconds`

### 4. Start Frontend

Open another Command Prompt window:

```cmd
cd ArtForge\artforge-frontend
npm install
npm run dev
```

Wait for: `Local: http://localhost:3000`

## 🛑 Stopping Services

### Using Script

```cmd
stop-services.bat
```

### Manually

Close all Command Prompt windows that are running the services, or press `Ctrl+C` in each window.

## ⚙️ Configuration

### Environment Variables (Optional)

Create a `.env` file in `artforge-frontend/`:

```env
VITE_API_URL=http://localhost:8080/api
```

### JWT Secret (Auth Service)

Default JWT secret is used for development. For production, set:

```cmd
set JWT_SECRET=your-256-bit-secret-key-change-this-in-production
```

## 🐛 Troubleshooting

### Java Version Error

**Error**: `release version 17 not supported`

**Solution**: 
- Install Java 17 (see [JAVA_SETUP.md](JAVA_SETUP.md))
- Verify: `java -version` shows 17 or higher
- Restart Command Prompt after installation

### Port Already in Use

**Error**: `Port 8080 is already in use`

**Solution**:
```cmd
# Find process using port
netstat -ano | findstr :8080

# Kill process (replace PID with actual process ID)
taskkill /PID <PID> /F
```

### Maven Not Found

**Error**: `'mvn' is not recognized`

**Solution**:
- Install Maven from https://maven.apache.org/download.cgi
- Add Maven `bin` directory to PATH
- Restart Command Prompt

### Node.js Not Found

**Error**: `'node' is not recognized`

**Solution**:
- Install Node.js from https://nodejs.org/
- During installation, check "Add to PATH"
- Restart Command Prompt

### Frontend Dependencies Error

**Error**: `npm install` fails

**Solution**:
```cmd
cd artforge-frontend
rmdir /s /q node_modules
del package-lock.json
npm install
```

### Services Won't Start

1. Check all prerequisites are installed
2. Verify ports 8080, 8081, 8082, 3000 are not in use
3. Check service logs in their respective Command Prompt windows
4. Ensure you're in the correct directory when running commands

## 📚 Additional Documentation

- [REQUIREMENTS.md](REQUIREMENTS.md) - Detailed requirements
- [JAVA_SETUP.md](JAVA_SETUP.md) - Java 17 installation guide
- Main [README.md](../README.md) - Complete project documentation

## ✅ Setup Checklist

- [ ] Java 17+ installed and verified
- [ ] Maven 3.6+ installed and verified
- [ ] Node.js 18+ installed and verified
- [ ] npm 9+ installed and verified
- [ ] Project cloned/downloaded
- [ ] `start-services.bat` executed successfully
- [ ] All services started (4 Command Prompt windows)
- [ ] Frontend accessible at http://localhost:3000
- [ ] Gateway accessible at http://localhost:8080

## 🎉 Next Steps

After successful setup:

1. Open http://localhost:3000 in your browser
2. Click "Register" to create an account
3. Login with your credentials
4. Explore the application!

---

**Need Help?** Check the troubleshooting section or review the main README.md file.


