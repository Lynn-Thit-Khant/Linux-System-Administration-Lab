# Service Layout

This file describes the main services configured on the Linux server.

## Apache Web Server

Apache was configured to serve web content on custom port `8013`.

## Secure Web Directory

A protected directory was created under the Apache document root to restrict access to authorised users.

## Nextcloud

Nextcloud was deployed as a private cloud storage platform using MariaDB as the database backend.

## Backup Services

Backup automation was implemented using Bash and tar. File synchronisation was implemented using rsync over SSH.
