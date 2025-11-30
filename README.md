# The Wolf Project 🐺

[![Build Status](https://github.com/whitecrixu/The-Wolf-Project/actions/workflows/build-vcpkg.yml/badge.svg?branch=main)](https://github.com/whitecrixu/The-Wolf-Project/actions/workflows/build-vcpkg.yml "vcpkg build status")
[![Build Status](https://github.com/whitecrixu/The-Wolf-Project/actions/workflows/docker-image.yml/badge.svg?branch=main)](https://github.com/whitecrixu/The-Wolf-Project/actions/workflows/docker-image.yml "Docker image build status")

---

**The Wolf Project** is an advanced modification of [The Forgotten Server](https://github.com/otland/forgottenserver) engine, created to combine the **nostalgia of classic Tibia 10.98** with modern content from newer updates.

## 🎯 Project Goals

Our goal is to create a server that:
- **Preserves the spirit and atmosphere of Tibia from the 10.98 era** – mechanics, balance, gameplay style
- **One stable protocol** – we develop the engine on protocol 10.98, no support for newer versions
- **New content from modern Tibia** – weapons, armor, items and elements from the latest Tibia updates
- **Based on OTCv8** – modified client providing modern features while maintaining retro aesthetics
- **Offers stability and performance** – optimized C++ code using the latest standards

## 🐺 Why "The Wolf Project"?

The wolf symbolizes strength, perseverance, and loyalty to the pack. Just as wolves work in a coordinated group, our project brings together a community of players and developers striving to create the perfect Tibia server.

## ✨ Key Features

### 🕹️ Nostalgia 10.98
- Original combat and magic mechanics
- Classic vocation and spell system
- Authentic NPC behaviors and quests
- Balance reminiscent of Tibia's golden era

### 🆕 New Content from Modern Tibia
- Weapons and armor from the latest Tibia updates
- New items, runes, and potions
- Additional monsters and bosses
- Fresh quests and mechanics inspired by modern Tibia
- Everything balanced for the 10.98 atmosphere

### 🚀 Stable Technology
- **Single protocol 10.98** – no support for newer versions
- Compatibility with **OTCv8** (modified Open Tibia Client)
- Optimized server performance
- Extended Lua scripting capabilities

### 🛠️ Developer Features
- Modular event system
- Advanced API for script creators
- Hot-reload configuration
- Detailed logging and debugging

## 🖥️ Client Compatibility

| Client | Status | Notes |
|--------|--------|-------|
| OTCv8 (modified) | ✅ Supported | **Recommended client** - full compatibility |
| OTClient 10.98 | ✅ Supported | Basic compatibility |

> ⚠️ **Note:** This project is developed exclusively on protocol **10.98**. We do not plan to support newer Tibia protocols.

## 🚀 Getting Started

### Compilation

Detailed compilation instructions can be found in our [Wiki - Compiling](https://github.com/whitecrixu/The-Wolf-Project/wiki/Compiling).

#### Quick Start (Linux)
```bash
git clone https://github.com/whitecrixu/The-Wolf-Project.git
cd The-Wolf-Project
mkdir build && cd build
cmake ..
make -j$(nproc)
```

#### Docker
```bash
docker build -t wolf-project .
docker run -d -p 7171:7171 -p 7172:7172 wolf-project
```

#### Docker Compose
```bash
# Copy and configure environment variables
cp .env.example .env

# Start server with database
docker-compose up -d

# With phpMyAdmin (database admin panel)
docker-compose --profile admin up -d
```

### Configuration

1. Copy `config.lua.dist` to `config.lua`
2. Import `schema.sql` into your MySQL database
3. Adjust settings in `config.lua`
4. Start the server: `./tfs`

## 📚 Documentation

- [Compiling](https://github.com/whitecrixu/The-Wolf-Project/wiki/Compiling)
- [Script Reference](https://github.com/whitecrixu/The-Wolf-Project/wiki/Script-Interface)
- [Server Configuration](https://github.com/whitecrixu/The-Wolf-Project/wiki/Configuration)
- [Contributing](https://github.com/whitecrixu/The-Wolf-Project/wiki/Contributing)

## 💬 Support

If you need help:

1. **OTLand Forum** - [Support Forum](https://otland.net/forums/support.16/) - main place for questions
2. **GitHub Discussions** - discussions and feature proposals
3. **Issue Tracker** - for bug reports only (not a support forum!)

> ⚠️ The issue tracker is for bug reports only. Technical support questions will be closed.

## 🐛 Reporting Bugs

We use [GitHub Issues](https://github.com/whitecrixu/The-Wolf-Project/issues) for tracking bugs.

Before reporting:
- Check if the bug has already been reported
- Provide a detailed description of the problem
- Include logs and reproduction steps
- Specify the server and client version

## 🤝 Contributing

We welcome contributions to the project! See our [contributor's guide](https://github.com/whitecrixu/The-Wolf-Project/blob/main/CONTRIBUTING.md).

### How to Help?
- 🐛 Report and fix bugs
- 💡 Propose new features
- 📖 Improve documentation
- 🧪 Test new versions
- 🌍 Translate to other languages

## 📋 System Requirements

### Server
- **OS**: Linux (recommended), Windows, macOS
- **Compiler**: GCC 9+, Clang 10+, MSVC 2019+
- **Database**: MySQL 5.7+ / MariaDB 10.3+
- **RAM**: minimum 1GB (4GB+ recommended)

### Client (OTCv8)
- **OS**: Windows 7+, Linux, macOS
- **GPU**: OpenGL 2.0+ support
- **RAM**: minimum 512MB

## 📜 License

This project is licensed under **GPL-2.0**. See the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- [The Forgotten Server](https://github.com/otland/forgottenserver) - base engine
- [OpenTibia Server](https://github.com/opentibia/server) - original source
- [OTClient](https://github.com/edubart/otclient) - open-source client
- [OTCv8](https://github.com/AtkSeeworx/otcv8) - modified client
- OTLand community for invaluable support

---

<p align="center">
  <i>Created with ❤️ by The Wolf Project community</i>
</p>

<p align="center">
  <a href="https://github.com/whitecrixu/The-Wolf-Project">⭐ Star this repo if you like it!</a>
</p>

