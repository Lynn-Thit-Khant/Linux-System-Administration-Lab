# Nextcloud Private Cloud Setup

## Purpose

Deploy Nextcloud as a self-hosted private cloud storage service.

## Components

- Apache
- PHP 8.1
- MariaDB
- Nextcloud

## Main Steps

### Install PHP and Required Modules

```bash
sudo dnf module reset php -y
sudo dnf module enable php:8.1 -y
sudo dnf install -y php php-cli php-common php-mysqlnd php-gd php-xml php-mbstring php-json php-zip php-curl php-intl php-bcmath php-opcache
```

### Install and Start MariaDB

```bash
sudo dnf install -y mariadb-server
sudo systemctl enable --now mariadb
sudo mysql_secure_installation
```

### Create Nextcloud Database

```sql
CREATE DATABASE db_p2338813 CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
CREATE USER 'cloud_p2338813'@'localhost' IDENTIFIED BY '[REDACTED_PASSWORD]';
GRANT ALL PRIVILEGES ON db_p2338813.* TO 'cloud_p2338813'@'localhost';
FLUSH PRIVILEGES;
```

### Deploy Nextcloud

```bash
cd /tmp
wget https://download.nextcloud.com/server/releases/latest.tar.bz2
sudo tar -xjf latest.tar.bz2
sudo mv nextcloud /var/www/html/
```

### Set Permissions

```bash
sudo chown -R apache:apache /var/www/html/nextcloud
sudo chmod -R 755 /var/www/html/nextcloud
```

### Configure SELinux

```bash
sudo semanage fcontext -a -t httpd_sys_rw_content_t "/var/www/html/nextcloud(/.*)?"
sudo restorecon -Rv /var/www/html/nextcloud
sudo setsebool -P httpd_unified on
```

## Validation

Open:

```text
http://www.p2338813.com:8013/nextcloud
```

Expected result:

- Nextcloud setup page loads successfully

## Security Note

Replace all sample credentials before using this setup in any real environment.
