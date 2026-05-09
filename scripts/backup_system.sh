#!/bin/bash

set -e

BACKUP_DIR="/backup/student_p2338813"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_FILE="${BACKUP_DIR}/backup_${TIMESTAMP}.tar.gz"

sudo tar -czpf "$BACKUP_FILE" /SharedData /var/www/html/nextcloud /home/student

echo "Backup created: $BACKUP_FILE"

ls -1t "${BACKUP_DIR}"/backup_*.tar.gz | tail -n +6 | xargs -r rm -f
