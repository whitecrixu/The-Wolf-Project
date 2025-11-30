# Compiling The Wolf Project

This guide will help you compile The Wolf Project from source on various operating systems.

## Table of Contents
- [Requirements](#requirements)
- [Linux](#linux)
  - [Ubuntu/Debian](#ubuntudebian)
  - [Fedora](#fedora)
  - [Arch Linux](#arch-linux)
- [Windows](#windows)
- [macOS](#macos)
- [Docker](#docker)
- [Troubleshooting](#troubleshooting)

---

## Requirements

### Common Dependencies
- **CMake** 3.10 or higher
- **C++ Compiler** with C++17 support:
  - GCC 9+
  - Clang 10+
  - MSVC 2019+
- **Boost** 1.66+
- **MySQL/MariaDB** client libraries
- **LuaJIT** or Lua 5.2+
- **libcrypto++**
- **pugixml**
- **fmt** library

---

## Linux

### Ubuntu/Debian

#### Install Dependencies

```bash
sudo apt-get update
sudo apt-get install -y \
    build-essential \
    cmake \
    git \
    libboost-date-time-dev \
    libboost-filesystem-dev \
    libboost-iostreams-dev \
    libboost-system-dev \
    libcrypto++-dev \
    libfmt-dev \
    libgmp-dev \
    libluajit-5.1-dev \
    libmariadb-dev \
    libpugixml-dev
```

#### Clone and Build

```bash
# Clone the repository
git clone https://github.com/whitecrixu/The-Wolf-Project.git
cd The-Wolf-Project

# Create build directory
mkdir build && cd build

# Configure with CMake
cmake ..

# Build (use all available cores)
make -j$(nproc)
```

#### Build Types

```bash
# Debug build (for development)
cmake -DCMAKE_BUILD_TYPE=Debug ..

# Release build (optimized, recommended for production)
cmake -DCMAKE_BUILD_TYPE=Release ..

# Release with debug info
cmake -DCMAKE_BUILD_TYPE=RelWithDebInfo ..
```

---

### Fedora

#### Install Dependencies

```bash
sudo dnf install -y \
    boost-devel \
    cmake \
    cryptopp-devel \
    fmt-devel \
    gcc-c++ \
    gmp-devel \
    luajit-devel \
    make \
    mariadb-devel \
    pugixml-devel
```

#### Build

```bash
git clone https://github.com/whitecrixu/The-Wolf-Project.git
cd The-Wolf-Project
mkdir build && cd build
cmake ..
make -j$(nproc)
```

---

### Arch Linux

#### Install Dependencies

```bash
sudo pacman -S --needed \
    base-devel \
    boost \
    cmake \
    crypto++ \
    fmt \
    gmp \
    luajit \
    mariadb-libs \
    pugixml
```

#### Build

```bash
git clone https://github.com/whitecrixu/The-Wolf-Project.git
cd The-Wolf-Project
mkdir build && cd build
cmake ..
make -j$(nproc)
```

---

## Windows

### Using vcpkg (Recommended)

#### Prerequisites
- Visual Studio 2019 or newer with C++ workload
- Git
- CMake (included with Visual Studio or standalone)

#### Install vcpkg

```powershell
# Clone vcpkg
git clone https://github.com/Microsoft/vcpkg.git
cd vcpkg

# Bootstrap vcpkg
.\bootstrap-vcpkg.bat

# Integrate with Visual Studio
.\vcpkg integrate install
```

#### Install Dependencies

```powershell
vcpkg install boost-iostreams:x64-windows
vcpkg install boost-system:x64-windows
vcpkg install boost-filesystem:x64-windows
vcpkg install boost-date-time:x64-windows
vcpkg install cryptopp:x64-windows
vcpkg install fmt:x64-windows
vcpkg install libmariadb:x64-windows
vcpkg install luajit:x64-windows
vcpkg install pugixml:x64-windows
```

#### Build with CMake

```powershell
# Clone the repository
git clone https://github.com/whitecrixu/The-Wolf-Project.git
cd The-Wolf-Project

# Create build directory
mkdir build
cd build

# Configure with vcpkg toolchain
cmake .. -DCMAKE_TOOLCHAIN_FILE=C:/path/to/vcpkg/scripts/buildsystems/vcpkg.cmake -DCMAKE_BUILD_TYPE=Release

# Build
cmake --build . --config Release
```

### Using Visual Studio Solution

1. Open the `vc17/` folder in Visual Studio
2. Configure NuGet packages or vcpkg integration
3. Build the solution (Ctrl+Shift+B)

---

## macOS

### Using Homebrew

#### Install Dependencies

```bash
# Install Homebrew if not installed
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install dependencies
brew install \
    boost \
    cmake \
    cryptopp \
    fmt \
    gmp \
    luajit \
    mariadb-connector-c \
    pugixml
```

#### Build

```bash
git clone https://github.com/whitecrixu/The-Wolf-Project.git
cd The-Wolf-Project
mkdir build && cd build
cmake ..
make -j$(sysctl -n hw.ncpu)
```

---

## Docker

The easiest way to build and run The Wolf Project is using Docker.

### Build Docker Image

```bash
git clone https://github.com/whitecrixu/The-Wolf-Project.git
cd The-Wolf-Project

# Build the image
docker build -t wolf-project .
```

### Run with Docker

```bash
docker run -d \
    --name wolf-server \
    -p 7171:7171 \
    -p 7172:7172 \
    -v $(pwd)/config.lua:/srv/config.lua:ro \
    -v $(pwd)/data:/srv/data:ro \
    wolf-project
```

### Using Docker Compose (Recommended)

```bash
# Copy environment file
cp .env.example .env

# Edit .env with your database credentials
nano .env

# Start all services (server + database)
docker-compose up -d

# With phpMyAdmin
docker-compose --profile admin up -d

# View logs
docker-compose logs -f wolf-server

# Stop services
docker-compose down
```

---

## Troubleshooting

### Common Issues

#### CMake can't find Boost
```bash
# Specify Boost root manually
cmake -DBOOST_ROOT=/usr/local ..
```

#### LuaJIT not found
```bash
# Force use of standard Lua instead
cmake -DUSE_LUAJIT=OFF ..
```

#### MySQL/MariaDB libraries not found
```bash
# Ubuntu/Debian
sudo apt-get install libmariadb-dev-compat

# Or specify path manually
cmake -DMYSQL_INCLUDE_DIR=/usr/include/mysql -DMYSQL_LIBRARY=/usr/lib/x86_64-linux-gnu/libmysqlclient.so ..
```

#### Compiler errors with old GCC
Make sure you're using GCC 9 or newer:
```bash
gcc --version

# Install newer GCC on Ubuntu
sudo apt-get install gcc-11 g++-11
export CC=gcc-11
export CXX=g++-11
```

#### Out of memory during compilation
Reduce parallel jobs:
```bash
make -j2  # Use only 2 cores
```

### Getting Help

If you encounter issues not covered here:
1. Check [GitHub Issues](https://github.com/whitecrixu/The-Wolf-Project/issues)
2. Ask on [OTLand Forums](https://otland.net/forums/support.16/)
3. Open a new issue with:
   - Your operating system and version
   - Compiler version (`gcc --version` or `clang --version`)
   - Full error message
   - CMake output

---

## Next Steps

After successful compilation:
1. [Configure the server](Configuration.md)
2. [Set up the database](Database-Setup.md)
3. [Run your first server](Running.md)
