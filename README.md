# The Wolf Project 🐺

[![Build Status](https://img.shields.io/badge/build-passing-brightgreen)](https://wolf-project.org)
[![License](https://img.shields.io/badge/license-GPL--2.0-blue)](LICENSE)
[![C++](https://img.shields.io/badge/C%2B%2B-20-00599C?logo=c%2B%2B)](https://isocpp.org/)
[![Discord](https://img.shields.io/badge/Discord-Join-7289DA?logo=discord)](https://discord.gg/wolf-project)

---

**The Wolf Project** is a free and open-source MMORPG server emulator written in modern C++. Based on the Project Wolf engine and inspired by CrystalServer, it combines the **nostalgia of Tibia 11.00 protocol** with modern content from newer updates, providing a stable and performant platform for creating the ultimate retro-modern Tibia experience.

## 🎯 Project Goals

Our mission is to deliver:
- **Tibia 11.00 Foundation** – exclusively based on protocol 11.00, preserving the spirit and mechanics of classic Tibia
- **Modern Content Integration** – weapons, armor, items, and features from latest Tibia updates, balanced for 11.00 gameplay
- **Stability and Performance** – optimized C++20 code with modern architecture
- **Developer-Friendly** – extensive Lua API, hot-reload, and modular event system
- **Community-Driven** – open development with transparent roadmap
- **Production-Ready** – enterprise features including metrics, telemetry, and Docker support

## 🐺 Why "The Wolf Project"?

The wolf symbolizes strength, perseverance, and loyalty to the pack. Just as wolves work in coordinated groups, our project brings together a community of developers and players striving to create the ultimate Tibia server experience.

## ✨ Key Features

### 🎮 Game Features

#### 🕹️ Classic 11.00 Foundation
- **Protocol 11.00 exclusively** - authentic retro experience
- Original combat mechanics and balance
- Classic spell and vocation system
- Nostalgic gameplay feel from Tibia's golden era

#### 🆕 Modern Content Additions
- **New weapons and armor** from latest Tibia updates
- **Latest items, runes, and potions** balanced for 11.00
- **Modern monsters and bosses** adapted to classic mechanics
- Wheel of Destiny system
- Prey and Task Hunting systems
- Forge and Imbuements
- Bosstiary and Bestiary
- Enhanced VIP system with bonuses
- Achievement system

> 💡 **Philosophy**: We preserve the 11.00 gameplay experience while enriching it with carefully selected content from newer versions.

### 🚀 Technical Excellence
- **Modern C++20** – utilizing latest language features
- **High Performance** – optimized networking and database operations
- **Scalability** – thread pool, async operations, SIMD support
- **Observability** – OpenTelemetry metrics and Prometheus integration
- **Docker Support** – containerized deployment with docker-compose
- **Advanced KV Storage** – protobuf-based key-value system replacing legacy storage

### 🛠️ Developer Features
- Extensive Lua 5.1/LuaJIT scripting API
- Hot-reload configuration without restart
- Modular event and action system
- Comprehensive logging with spdlog
- CMake build system with vcpkg dependencies
- Cross-platform support (Linux, Windows, macOS)

### 🎨 Client Compatibility

| Client | Protocol | Status | Notes |
|--------|----------|--------|-------|
| **Modified OTClient** | 11.00 | ✅ **Recommended** | **Custom client with modern features** |
| Tibia 11.00 | 11.00 | ✅ Supported | Official client, full support |
| OTCv8 | 11.00 | ✅ Supported | Enhanced features, retro style |
| Standard OTClient | Custom | ⚠️ Limited | Basic compatibility |

> 💡 **Recommended**: Use our **modified OTClient** for the best experience - it combines the nostalgic 11.00 protocol with modern client features and optimizations.

> ⚠️ **Important**: This project is developed **exclusively on protocol 11.00**. We do not support newer Tibia protocols (12.x, 13.x).

## 🚀 Getting Started

### Client Download

To connect to The Wolf Project server, you'll need our **modified OTClient**:

- **Download**: [Modified OTClient for 11.00](https://github.com/whitecrixu/otclient/releases) *(coming soon)*
- **Features**: Modern UI, enhanced performance, custom features
- **Protocol**: Exclusively 11.00

Alternatively, you can use the official Tibia 11.00 client or OTCv8.

### Prerequisites

- **Compiler**: GCC 11+, Clang 14+, or MSVC 2022+
- **CMake**: 3.22 or higher
- **vcpkg**: Latest version (or use system packages)
- **Database**: MySQL 8.0+ or MariaDB 10.6+
- **OS**: Linux (recommended), Windows 10+, macOS 12+

### Quick Start with Docker

The fastest way to get started:

```bash
git clone https://github.com/whitecrixu/The-Wolf-Project.git
cd The-Wolf-Project

# Copy and configure environment
cp docker/.env.example docker/.env
nano docker/.env  # Edit database credentials

# Start everything (server + database)
docker-compose -f docker/docker-compose.yml up -d

# With phpMyAdmin for database management
docker-compose -f docker/docker-compose.yml --profile admin up -d

# View logs
docker-compose -f docker/docker-compose.yml logs -f
```

Server will be available on:
- **Login Port**: 7171
- **Game Port**: 7172
- **Metrics**: http://localhost:9090 (Prometheus)
- **phpMyAdmin**: http://localhost:8080 (if admin profile enabled)

### Compilation from Source

#### Linux/macOS

```bash
# Install dependencies (Ubuntu/Debian)
sudo apt-get install git cmake build-essential libmysqlclient-dev \
  libboost-system-dev libboost-iostreams-dev libpugixml-dev \
  libcrypto++-dev libfmt-dev nlohmann-json3-dev

# Clone repository
git clone https://github.com/whitecrixu/The-Wolf-Project.git
cd The-Wolf-Project

# Build with vcpkg (recommended)
./recompile.sh

# Or manual CMake build
mkdir build && cd build
cmake -DCMAKE_BUILD_TYPE=Release ..
cmake --build . -j$(nproc)
```

#### Windows

```powershell
# Install vcpkg
git clone https://github.com/microsoft/vcpkg.git
cd vcpkg
.\bootstrap-vcpkg.bat
.\vcpkg integrate install

# Clone and build
git clone https://github.com/whitecrixu/The-Wolf-Project.git
cd The-Wolf-Project

# Build with CMake
cmake --preset=windows-release
cmake --build --preset=windows-release
```

### Configuration

1. **Database Setup**:
```bash
mysql -u root -p < schema.sql
```

2. **Server Configuration**:
```bash
cp config.lua.dist config.lua
nano config.lua  # Edit your settings
```

Key settings to configure:
- `serverName` - Your server name
- `mysqlHost`, `mysqlUser`, `mysqlPass`, `mysqlDatabase` - Database connection
- `dataPackDirectory` - Use `"data-wolf-global"` for full content
- `ip` - Server IP address
- `loginProtocolPort` / `gameProtocolPort` - Server ports

3. **Start Server**:
```bash
./wolf  # Linux/macOS
wolf.exe  # Windows
```

## 📚 Documentation

- [📖 Compiling Guide](docs/COMPILING.md) - detailed compilation instructions
- [⚙️ Configuration Reference](docs/CONFIGURATION.md) - all config.lua options
- [🗄️ Database Schema](docs/DATABASE.md) - database structure and migrations
- [📜 Scripting API](docs/SCRIPTING.md) - Lua API reference
- [🐳 Docker Deployment](docker/DOCKER.md) - containerized setup guide
- [📊 Metrics & Monitoring](metrics/README.md) - Prometheus/Grafana setup

## 🗺️ Map & Content

This server combines content from multiple sources:

### Project Wolf Datapack
- Complete map of Tibia with latest areas
- All quests and NPCs
- Up-to-date monster spawns
- Latest items and equipment

### CrystalServer Enhancements
- Custom scripts and optimizations from [CrystalServer](https://github.com/whitecrixu/crystalserver)
- Additional features and improvements
- Enhanced game mechanics

To download the map:
```bash
cd data-wolf-global/world/
wget https://wolf-project.org/downloads/wolf.otbm
```

### Custom Modifications

We maintain custom modifications in:
- `data-wolf-global/` - Custom scripts and content
- `data/` - Core engine scripts

## 💬 Support & Community

### Getting Help

1. **GitHub Discussions** - [Ask questions and share ideas](https://github.com/whitecrixu/The-Wolf-Project/discussions)
2. **Discord Server** - Join our community (link in repo)
3. **Email Support** - jakub.polewka92@gmail.com

> ⚠️ **Note**: GitHub Issues are for **bug reports only**. Support questions will be redirected to Discussions.

### Reporting Bugs

Before creating an issue:
- ✅ Check if the bug was already reported
- ✅ Use the latest version
- ✅ Provide logs and reproduction steps
- ✅ Include server/client versions

**Bug Report Template**: Use our issue template when reporting bugs.

## 🤝 Contributing

We welcome contributions! See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

### Ways to Contribute

- 🐛 **Fix Bugs** - Check our [issue tracker](https://github.com/whitecrixu/The-Wolf-Project/issues)
- ✨ **Add Features** - Propose new features in Discussions
- 📖 **Improve Docs** - Help make documentation better
- 🧪 **Test & Report** - Test development versions
- 💬 **Help Others** - Answer questions in Discussions
- 🌍 **Translate** - Help localize content

### Development Workflow

```bash
# Fork the repository
# Create feature branch
git checkout -b feature/your-feature

# Make changes and commit
git commit -am "Add: your feature description"

# Push and create Pull Request
git push origin feature/your-feature
```

### Code Standards

- Follow C++20 best practices
- Use clang-format for formatting (`.clang-format` provided)
- Write clear commit messages
- Add tests for new features
- Update documentation

## 📋 System Requirements

### Minimum Requirements

**Server**:
- **CPU**: 2 cores @ 2.0 GHz
- **RAM**: 2 GB
- **Storage**: 5 GB SSD
- **OS**: Ubuntu 20.04+, Windows 10+, macOS 12+
- **Database**: MySQL 8.0+ or MariaDB 10.6+

**Client**:
- **OS**: Windows 7+, Linux, macOS
- **RAM**: 1 GB
- **GPU**: OpenGL 2.0+

### Recommended for Production

**Server**:
- **CPU**: 4+ cores @ 3.0+ GHz
- **RAM**: 8 GB+
- **Storage**: 20 GB+ NVMe SSD
- **Network**: 1 Gbps connection
- **OS**: Ubuntu 22.04 LTS or Debian 12

**Client (Modified OTClient)**:
- **OS**: Windows 7+, Linux, macOS
- **RAM**: 1 GB
- **GPU**: OpenGL 2.0+ support
- **Resolution**: 1280x720 minimum (1920x1080 recommended)

## 🔒 Security

Found a security vulnerability? Please **do not** open a public issue.

Contact us privately:
- **Email**: jakub.polewka92@gmail.com
- **Subject**: [SECURITY] Vulnerability Report

We take security seriously and will respond promptly.

## 📜 License

This project is licensed under the **GNU General Public License v2.0**.

```
Copyright (©) 2025-2026 The Wolf Project
Website: https://wolf-project.org
```

See [LICENSE](LICENSE) file for full details.

### Third-Party Licenses

This project uses several open-source libraries. See [THIRD_PARTY_LICENSES.md](docs/THIRD_PARTY_LICENSES.md) for attribution.

## 🙏 Acknowledgments

The Wolf Project stands on the shoulders of giants:

- **[Project Wolf](https://github.com/whitecrixu/Project_Wolf)** - Base engine and architecture
- **[CrystalServer](https://github.com/whitecrixu/crystalserver)** - Custom content and enhancements
- **[Project Wolf Datapack](https://github.com/whitecrixu/Project_Wolf)** - Game content and datapack
- **[The Forgotten Server](https://github.com/otland/forgottenserver)** - Original TFS engine
- **[OTClient](https://github.com/edubart/otclient)** - Open-source client
- **OpenTibia Community** - Years of development and support
- **All Contributors** - Everyone who helped improve this project

## 📊 Project Stats

![GitHub last commit](https://img.shields.io/github/last-commit/whitecrixu/The-Wolf-Project)
![GitHub issues](https://img.shields.io/github/issues/whitecrixu/The-Wolf-Project)
![GitHub pull requests](https://img.shields.io/github/issues-pr/whitecrixu/The-Wolf-Project)
![Lines of code](https://img.shields.io/tokei/lines/github/whitecrixu/The-Wolf-Project)

## 🗺️ Roadmap

Check our [project roadmap](https://github.com/whitecrixu/The-Wolf-Project/projects) for upcoming features:

- [ ] Enhanced metrics and monitoring
- [ ] Performance optimizations
- [ ] Extended Lua API
- [ ] Advanced anti-cheat system
- [ ] Web-based administration panel
- [ ] Real-time map editor integration

## 📞 Contact

- **Website**: https://wolf-project.org
- **Email**: jakub.polewka92@gmail.com
- **GitHub**: https://github.com/whitecrixu/The-Wolf-Project
- **Discord**: [Join our community](https://discord.gg/wolf-project)

---

<p align="center">
  <strong>Built with ❤️ by The Wolf Project Team</strong>
</p>

<p align="center">
  <a href="https://github.com/whitecrixu/The-Wolf-Project">⭐ Star us on GitHub</a> •
  <a href="https://github.com/whitecrixu/The-Wolf-Project/issues">🐛 Report Bug</a> •
  <a href="https://github.com/whitecrixu/The-Wolf-Project/discussions">💬 Join Discussion</a>
</p>

<p align="center">
  <sub>The Wolf Project is not affiliated with or endorsed by CipSoft GmbH.</sub>
</p>
