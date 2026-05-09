# Design Decisions

## Static IP Addressing

Static IPs were used to make server access predictable for SSH, Apache, rsync, and Nextcloud.

## Custom Apache Port

Apache was configured on port 8013 to demonstrate service configuration beyond the default port 80.

## SSH Key Authentication

SSH key authentication was used to support secure remote administration and automated file synchronisation.

## Backup Retention

The backup script retains only the latest 5 archives to prevent uncontrolled storage growth.

## Nextcloud

Nextcloud was used to simulate private cloud storage in a self-hosted Linux environment.
