# Testing Checklist

## Network

- [ ] Server has static IP address
- [ ] Client has static IP address
- [ ] Client can ping server IP
- [ ] Client can resolve server hostname
- [ ] Client can access web service through hostname

## SSH

- [ ] SSH service is running
- [ ] Client can SSH into server
- [ ] SSH key authentication works
- [ ] `authorized_keys` contains the client public key

## Apache

- [ ] Apache service is active
- [ ] Apache listens on port 8013
- [ ] Firewall allows port 8013
- [ ] SELinux allows Apache to use port 8013
- [ ] Web page loads successfully

## Nextcloud

- [ ] MariaDB service is running
- [ ] Nextcloud database exists
- [ ] Apache can access Nextcloud files
- [ ] Nextcloud setup page loads

## Backup

- [ ] Backup script creates `.tar.gz` archive
- [ ] Archive includes required directories
- [ ] Retention keeps latest 5 backups
