# ArtForge Organization

<div align="center">

![ArtForge Logo](https://via.placeholder.com/200x200/6366f1/ffffff?text=ArtForge)

**A modern microservices platform for art management**

[![Java](https://img.shields.io/badge/Java-17-orange.svg)](https://www.oracle.com/java/)
[![Spring Boot](https://img.shields.io/badge/Spring%20Boot-3.2.0-brightgreen.svg)](https://spring.io/projects/spring-boot)
[![React](https://img.shields.io/badge/React-18-blue.svg)](https://reactjs.org/)
[![License](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

</div>

## 🎨 About ArtForge

ArtForge is a full-stack microservices application designed for art management, built with modern technologies and best practices.

### 🏗️ Architecture

```
Frontend (React) → API Gateway → Auth Service
                              → Backend Service
```

### 🛠️ Tech Stack

**Backend:**
- Java 17
- Spring Boot 3.2.0
- Spring Cloud Gateway
- Spring Security (JWT)
- JPA / Hibernate
- Flyway (Database Migrations)
- PostgreSQL / H2

**Frontend:**
- React 18
- Vite
- React Router
- Axios

**DevOps:**
- Docker
- Docker Compose
- GitHub Actions (CI/CD)
- Maven

## 📦 Services

| Service | Port | Description |
|---------|------|-------------|
| **Frontend** | 3000 | React application |
| **Gateway** | 8080 | API Gateway (Spring Cloud Gateway) |
| **Auth Service** | 8081 | Authentication & Authorization (JWT) |
| **Backend Service** | 8082 | Core business logic |

## 🚀 Quick Start

### Prerequisites

- Java 17+
- Maven 3.6+
- Node.js 18+
- Docker (optional)

### Windows Setup

```cmd
# Clone the repository
git clone https://github.com/ArtForge-com/artforge.git
cd artforge

# Start all services
.github\start-services.bat
```

### Documentation

- 📖 [Complete Setup Guide](SETUP.md)
- 📋 [System Requirements](REQUIREMENTS.md)
- ☕ [Java 17 Setup](JAVA_SETUP.md)
- 🏗️ [Architecture Documentation](../ARCHITECTURE.md)
- 🚀 [Quick Start Guide](../QUICKSTART.md)

## 📚 Repositories

### Main Repository
- **[artforge](https://github.com/ArtForge-com/artforge)** - Main monorepo containing all services

### Service Repositories (if separated)
- Gateway Service
- Auth Service
- Backend Service
- Frontend Application

## 🤝 Contributing

We welcome contributions! Please see our [Contributing Guidelines](../CONTRIBUTING.md) for details.

### Development Workflow

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Write/update tests
5. Submit a pull request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](../LICENSE) file for details.

## 🌟 Features

- ✅ JWT-based authentication
- ✅ Role-based access control
- ✅ RESTful API design
- ✅ Database migrations (Flyway)
- ✅ Docker support
- ✅ CI/CD pipelines
- ✅ Comprehensive testing
- ✅ API Gateway with routing
- ✅ CORS configuration
- ✅ Health check endpoints

## 📊 Project Status

- ✅ Core services implemented
- ✅ Authentication system
- ✅ API Gateway configured
- ✅ Frontend application
- ✅ Docker support
- ✅ CI/CD pipelines
- 🚧 Additional features in development

## 🔗 Links

- 📖 [Documentation](../README.md)
- 🐛 [Issue Tracker](https://github.com/ArtForge-com/artforge/issues)
- 💬 [Discussions](https://github.com/ArtForge-com/artforge/discussions)
- 📝 [Changelog](../CHANGELOG.md)

## 👥 Team

ArtForge is maintained by the ArtForge organization.

## 📞 Contact

- **Organization**: [@ArtForge-com](https://github.com/ArtForge-com)
- **Issues**: [GitHub Issues](https://github.com/ArtForge-com/artforge/issues)

---

<div align="center">

**Built with ❤️ by the ArtForge team**

[⬆ Back to Top](#artforge-organization)

</div>


