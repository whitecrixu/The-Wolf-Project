# Database Setup

This guide explains how to set up the MySQL/MariaDB database for The Wolf Project.

## Table of Contents
- [Requirements](#requirements)
- [Installing MySQL/MariaDB](#installing-mysqlmariadb)
- [Creating the Database](#creating-the-database)
- [Importing Schema](#importing-schema)
- [Docker Setup](#docker-setup)
- [Migrations](#migrations)
- [Backup and Restore](#backup-and-restore)

---

## Requirements

- MySQL 5.7+ or MariaDB 10.3+
- Sufficient disk space for your world data
- Proper user permissions

---

## Installing MySQL/MariaDB

### Ubuntu/Debian

```bash
# MariaDB (recommended)
sudo apt-get update
sudo apt-get install mariadb-server mariadb-client

# Secure the installation
sudo mysql_secure_installation
```

### Fedora

```bash
sudo dnf install mariadb-server mariadb
sudo systemctl start mariadb
sudo systemctl enable mariadb
sudo mysql_secure_installation
```

### Arch Linux

```bash
sudo pacman -S mariadb
sudo mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
sudo systemctl start mariadb
sudo systemctl enable mariadb
```

### Windows

Download and install from:
- [MariaDB](https://mariadb.org/download/)
- [MySQL](https://dev.mysql.com/downloads/installer/)

---

## Creating the Database

### Connect to MySQL

```bash
# As root
sudo mysql -u root -p
```

### Create Database and User

```sql
-- Create the database
CREATE DATABASE wolf CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Create a dedicated user
CREATE USER 'wolf'@'localhost' IDENTIFIED BY 'your_secure_password';

-- Grant permissions
GRANT ALL PRIVILEGES ON wolf.* TO 'wolf'@'localhost';

-- Apply changes
FLUSH PRIVILEGES;

-- Exit
EXIT;
```

### For Remote Access (Docker)

```sql
-- Allow connections from Docker network
CREATE USER 'wolf'@'%' IDENTIFIED BY 'your_secure_password';
GRANT ALL PRIVILEGES ON wolf.* TO 'wolf'@'%';
FLUSH PRIVILEGES;
```

---

## Importing Schema

### Using Command Line

```bash
# Navigate to project directory
cd /path/to/The-Wolf-Project

# Import the schema
mysql -u wolf -p wolf < schema.sql
```

### Using MySQL Client

```sql
USE wolf;
SOURCE /path/to/The-Wolf-Project/schema.sql;
```

### Verify Import

```sql
USE wolf;
SHOW TABLES;
```

Expected tables:
- `accounts`
- `players`
- `player_items`
- `player_skills`
- `player_storage`
- `guilds`
- `houses`
- `market_offers`
- And more...

---

## Docker Setup

The easiest way to run the database is with Docker Compose.

### Using docker-compose.yml

```bash
# Copy environment file
cp .env.example .env

# Edit credentials
nano .env
```

Example `.env`:
```env
MYSQL_ROOT_PASSWORD=super_secret_root_password
MYSQL_DATABASE=wolf
MYSQL_USER=wolf
MYSQL_PASSWORD=wolf_password
```

### Start Database

```bash
# Start only the database
docker-compose up -d database

# Check if running
docker-compose ps

# View logs
docker-compose logs database
```

### Connect to Docker Database

```bash
# From host
mysql -h 127.0.0.1 -P 3306 -u wolf -p wolf

# From inside container
docker exec -it wolf-database mysql -u wolf -p wolf
```

### With phpMyAdmin

```bash
# Start with admin profile
docker-compose --profile admin up -d

# Access at http://localhost:8080
```

---

## Migrations

When updating The Wolf Project, database migrations may be required.

### Check for Migrations

```bash
ls data/migrations/
```

### Apply Migrations

Migrations are numbered (e.g., `1.sql`, `2.sql`). Apply them in order:

```bash
# Apply single migration
mysql -u wolf -p wolf < data/migrations/1.sql

# Apply all migrations
for f in data/migrations/*.sql; do
    echo "Applying $f..."
    mysql -u wolf -p wolf < "$f"
done
```

### Track Applied Migrations

The `server_config` table tracks the current schema version:

```sql
SELECT * FROM server_config WHERE config = 'db_version';
```

---

## Backup and Restore

### Create Backup

```bash
# Full backup
mysqldump -u wolf -p wolf > backup_$(date +%Y%m%d_%H%M%S).sql

# Compressed backup
mysqldump -u wolf -p wolf | gzip > backup_$(date +%Y%m%d_%H%M%S).sql.gz
```

### Docker Backup

```bash
docker exec wolf-database mysqldump -u wolf -pwolf_password wolf > backup.sql
```

### Restore from Backup

```bash
# From SQL file
mysql -u wolf -p wolf < backup.sql

# From compressed file
gunzip < backup.sql.gz | mysql -u wolf -p wolf
```

### Automated Backups

Create a cron job for regular backups:

```bash
# Edit crontab
crontab -e

# Add daily backup at 4 AM
0 4 * * * mysqldump -u wolf -p'password' wolf | gzip > /backups/wolf_$(date +\%Y\%m\%d).sql.gz
```

---

## Troubleshooting

### Access Denied

```sql
-- Reset user password
ALTER USER 'wolf'@'localhost' IDENTIFIED BY 'new_password';
FLUSH PRIVILEGES;
```

### Connection Refused

```bash
# Check if MySQL is running
sudo systemctl status mariadb

# Check listening port
sudo netstat -tlnp | grep 3306
```

### Character Set Issues

```sql
-- Convert existing database
ALTER DATABASE wolf CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Convert tables
ALTER TABLE players CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
```

---

## Next Steps

- [Configure the server](Configuration.md)
- [Run your server](Running.md)
