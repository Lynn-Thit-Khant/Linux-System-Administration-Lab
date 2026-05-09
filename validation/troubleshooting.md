# Troubleshooting

## Apache does not load

Check service status:

```bash
systemctl status httpd
```

Check firewall:

```bash
sudo firewall-cmd --list-all
```

Check SELinux port:

```bash
sudo semanage port -l | grep http_port_t
```

## Hostname does not resolve

Check `/etc/hosts`:

```bash
cat /etc/hosts
```

Test with:

```bash
ping server.p2338813.com
```

## SSH login fails

Check SSH service:

```bash
systemctl status sshd
```

Check authorized keys:

```bash
ls ~/.ssh/authorized_keys
```

## Backup script fails

Check directory permissions:

```bash
ls -ld /backup/student_p2338813
ls -ld /SharedData
```

Check script permissions:

```bash
chmod +x backup_system.sh
```
