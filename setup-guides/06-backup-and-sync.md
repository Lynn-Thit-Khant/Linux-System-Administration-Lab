# Backup and File Synchronisation

## Purpose

Automate file synchronisation and backup workflows using Bash, rsync, and tar.

## File Synchronisation

### Create Shared Directory

```bash
sudo mkdir /SharedData
sudo chown student:student /SharedData
sudo chmod 775 /SharedData
```

### Synchronisation Script

```bash
#!/bin/bash

rsync -avz -e ssh /SharedData/ student@server.p2338813.com:/SharedData/
rsync -avz -e ssh student@server.p2338813.com:/SharedData/ /SharedData/
```

## Backup Automation

### Create Backup Directory

```bash
sudo mkdir -p /backup/student_p2338813
sudo chown student:student /backup/student_p2338813
sudo chmod 755 /backup/student_p2338813
```

### Backup Script

```bash
#!/bin/bash

BACKUP_DIR="/backup/student_p2338813"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_FILE="${BACKUP_DIR}/backup_${TIMESTAMP}.tar.gz"

sudo tar -czpf "$BACKUP_FILE" /SharedData /var/www/html/nextcloud /home/student

echo "Backup created: $BACKUP_FILE"

ls -1t "${BACKUP_DIR}"/backup_*.tar.gz | tail -n +6 | xargs -r rm -f
```

## Validation

```bash
sudo tar -tzf backup_file.tar.gz | grep SharedData
sudo tar -tzf backup_file.tar.gz | grep home/student
sudo tar -tzf backup_file.tar.gz | grep nextcloud
```

## Notes

The backup retention logic keeps only the latest 5 backup archives to control storage usage.
