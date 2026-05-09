# Recovery Validation

## Purpose

Validate that backup files can be inspected and used for recovery.

## Backup Verification

List archive contents:

```bash
sudo tar -tzf backup_file.tar.gz
```

Check specific directories:

```bash
sudo tar -tzf backup_file.tar.gz | grep SharedData
sudo tar -tzf backup_file.tar.gz | grep home/student
sudo tar -tzf backup_file.tar.gz | grep nextcloud
```

## Expected Result

The archive should contain:

- `/SharedData`
- `/home/student`
- `/var/www/html/nextcloud`

## Recovery Notes

Backup creation alone is not enough. A backup workflow should always include validation to confirm that required files are included and recoverable.
