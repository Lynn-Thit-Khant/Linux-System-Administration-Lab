# Apache Web Server Setup

## Purpose

Deploy an Apache web server on a custom port for internal web hosting.

## Steps

### Install Apache

```bash
sudo dnf install -y httpd
```

### Configure Apache Port

Edit the Apache configuration file:

```bash
sudo nano /etc/httpd/conf/httpd.conf
```

Change:

```text
Listen 80
```

To:

```text
Listen 8013
```

### Allow Port in Firewall

```bash
sudo firewall-cmd --add-port=8013/tcp --permanent
sudo firewall-cmd --reload
```

### Allow Port in SELinux

```bash
sudo semanage port -a -t http_port_t -p tcp 8013
```

### Start Apache

```bash
sudo systemctl enable --now httpd
```

## Validation

```bash
systemctl status httpd
curl http://localhost:8013
```

## Notes

Both firewalld and SELinux must allow Apache to use the custom port. If either layer blocks access, the web service may fail.
