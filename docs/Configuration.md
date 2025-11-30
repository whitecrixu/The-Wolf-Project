# Server Configuration

This guide explains how to configure The Wolf Project server.

## Table of Contents
- [Quick Setup](#quick-setup)
- [Configuration File](#configuration-file)
- [Database Settings](#database-settings)
- [Server Settings](#server-settings)
- [Gameplay Settings](#gameplay-settings)
- [Advanced Options](#advanced-options)

---

## Quick Setup

1. Copy the distribution config file:
   ```bash
   cp config.lua.dist config.lua
   ```

2. Edit `config.lua` with your settings:
   ```bash
   nano config.lua  # or use your preferred editor
   ```

3. At minimum, configure:
   - Database connection (host, user, password, database name)
   - Server IP address
   - Server name

---

## Configuration File

The main configuration file is `config.lua`. It uses Lua syntax.

### Basic Structure

```lua
-- String values
serverName = "The Wolf Project"

-- Numeric values
loginProtocolPort = 7171

-- Boolean values
freePlayerPremium = false

-- Tables/Arrays
motd = "Welcome to The Wolf Project!"
```

---

## Database Settings

```lua
-- MySQL/MariaDB connection settings
mysqlHost = "127.0.0.1"
mysqlUser = "wolf"
mysqlPass = "your_password_here"
mysqlDatabase = "wolf"
mysqlPort = 3306
mysqlSock = ""  -- Unix socket path (optional)
```

### Docker Database Settings
When using Docker Compose:
```lua
mysqlHost = "database"  -- Docker service name
mysqlUser = "wolf"
mysqlPass = "wolf_password"
mysqlDatabase = "wolf"
```

---

## Server Settings

### Network Configuration

```lua
-- Server IP (use your public IP or 0.0.0.0 for all interfaces)
ip = "127.0.0.1"

-- Ports
loginProtocolPort = 7171
gameProtocolPort = 7172
statusProtocolPort = 7171

-- Server name and location
serverName = "The Wolf Project"
ownerName = "Admin"
ownerEmail = "admin@example.com"
url = "https://yourwebsite.com"
location = "Europe"
```

### Server Behavior

```lua
-- World type: "pvp", "no-pvp", "pvp-enforced"
worldType = "pvp"

-- Message of the Day
motd = "Welcome to The Wolf Project! Enjoy your stay."

-- Server save settings
globalSaveEnabled = true
globalSaveTime = 6  -- Hour (0-23)
globalSaveHour = 8
```

---

## Gameplay Settings

### Rates

```lua
-- Experience rates
rateExp = 1
rateExpFromPlayers = 0

-- Skill rates
rateSkill = 1
rateMagic = 1
rateLoot = 1
rateSpawn = 1
```

### Premium Account

```lua
-- Free premium for all players
freePremium = false

-- Premium features available to free accounts
freeDepotLimit = 2000
premiumDepotLimit = 10000
```

### PvP Settings

```lua
-- Protection level
protectionLevel = 1

-- Kill settings
killsToRedSkull = 3
killsToBlackSkull = 6

-- PZ (Protection Zone) settings
pzLocked = 60000  -- milliseconds
```

### Houses

```lua
-- House settings
housePriceEachSQM = 1000
houseRentPeriod = "weekly"  -- never, daily, weekly, monthly, yearly
```

---

## Advanced Options

### Performance

```lua
-- Server optimization
maxPlayers = 1000
statusTimeout = 5000
replaceKickOnLogin = true

-- Map settings
mapName = "wolf"
mapAuthor = "The Wolf Team"

-- Cache and performance
storeImagesInDatabase = false
```

### Security

```lua
-- Account settings
accountManager = true
namelockManager = true

-- Password settings
passwordType = "sha1"  -- plain, md5, sha1, sha256, sha512

-- Anti-cheat
fightWindowTime = 0
```

### Logging

```lua
-- Enable/disable various logs
logQueries = false
logPlayersStatements = false

-- Admin log
adminLogsEnabled = true
```

---

## Environment Variables

When using Docker, you can override settings with environment variables in `.env`:

```env
MYSQL_HOST=database
MYSQL_USER=wolf
MYSQL_PASSWORD=secret
MYSQL_DATABASE=wolf
```

---

## Verifying Configuration

After editing your configuration:

1. Check syntax:
   ```bash
   lua -c config.lua  # Should output nothing if valid
   ```

2. Start the server and check for errors:
   ```bash
   ./tfs
   ```

3. Look for configuration warnings in the startup output.

---

## Next Steps

- [Set up the database](Database-Setup.md)
- [Run your server](Running.md)
- [Script Reference](Script-Interface.md)
