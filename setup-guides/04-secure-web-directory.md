# Secure Web Directory

## Purpose

Create a protected Apache directory that requires user authentication before access.

## Steps

### Create Secure Directory

```bash
sudo mkdir -p /var/www/html/secure
sudo chmod 755 /var/www/html/secure
sudo restorecon -Rv /var/www/html/secure
```

### Create Protected PHP Page

```bash
sudo nano /var/www/html/secure/fintech.php
```

Example content:

```php
<?php
echo "Welcome to the secured site";
?>
```

### Create Apache Password File

```bash
sudo htpasswd -c /etc/httpd/.htpasswd student
```

### Add Apache Directory Protection

Add this block to the Apache configuration:

```apache
<Directory "/var/www/html/secure">
    AuthType Basic
    AuthName "Secured Area"
    AuthUserFile /etc/httpd/.htpasswd
    Require user student
</Directory>
```

### Restart Apache

```bash
sudo systemctl restart httpd
```

## Validation

Access:

```text
http://www.p2338813.com:8013/secure/fintech.php
```

Expected result:

- Browser prompts for username and password
- Authenticated user can access the secure page

## Notes

This setup demonstrates basic access protection for internal web content.
