# Linux System Administration Lab

## Overview

This project simulates a Linux-based client-server environment for system administration practice. It covers network configuration, secure remote access, Apache web hosting, protected web directories, Nextcloud private cloud storage, and automated backup workflows using Bash scripts.

The goal of this lab is to demonstrate practical infrastructure administration skills commonly used in IT support, systems administration, infrastructure support, and cloud support roles.

## Key Features

- Configured Linux client-server networking with static IP addresses and hostname resolution
- Enabled SSH-based remote administration between client and server systems
- Deployed Apache web server on custom port 8013
- Secured web directories using firewall rules and access protection
- Set up Nextcloud private cloud storage with MariaDB
- Automated file synchronisation and backups using Bash, rsync, and tar
- Implemented backup retention to keep the latest 5 backup archives
- Documented validation steps, troubleshooting notes, and design decisions

## Technologies Used

- Red Hat Linux
- Apache
- Bash
- SSH
- firewalld
- SELinux
- Nextcloud
- MariaDB
- rsync
- tar

## Architecture Summary

The lab uses a client-server design.

The server hosts Apache web services, secure web content, Nextcloud storage, shared data directories, and backup storage. The client connects to the server using SSH, hostname resolution, rsync, and browser-based web access.

See [`architecture/overview.md`](architecture/overview.md) for the full system design.

## Repository Structure

| Folder | Purpose |
|---|---|
| `architecture/` | System design, network layout, and service overview |
| `setup-guides/` | Step-by-step implementation guides |
| `scripts/` | Bash scripts for backup and file synchronisation |
| `configs/` | Example configuration files and firewall rules |
| `validation/` | Testing checklist, recovery validation, and troubleshooting |
| `docs/` | Design decisions, security notes, and lessons learned |

## Skills Demonstrated

- Linux system administration
- Network configuration
- SSH access management
- Web server deployment
- Firewall and access control
- Backup automation
- System recovery planning
- Technical documentation

## Outcome

This lab demonstrates the ability to configure, secure, automate, and document a Linux server environment in a structured way.
