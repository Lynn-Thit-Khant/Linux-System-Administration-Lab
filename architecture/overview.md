# Architecture Overview

This lab simulates a basic Linux client-server infrastructure.

## Components

### Server VM

The server provides:

- Apache web service
- Secure web directory
- Nextcloud private cloud storage
- Shared data directory
- Backup destination
- SSH access

### Client VM

The client is used to:

- Connect to the server through SSH
- Access hosted web services
- Synchronise files using rsync
- Validate hostname resolution and connectivity

## High-Level Flow

```text
Client VM
   |
   | SSH / HTTP / rsync
   |
Server VM
   |-- Apache web service
   |-- Secure web directory
   |-- Nextcloud private cloud storage
   |-- SharedData directory
   |-- Backup destination
```

## Purpose

The design reflects a small business or lab infrastructure where a Linux server provides internal services and automated backup support.
