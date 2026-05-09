# Firewall Rules

## Apache Custom Port

```bash
sudo firewall-cmd --add-port=8013/tcp --permanent
sudo firewall-cmd --reload
```

## Check Firewall Rules

```bash
sudo firewall-cmd --list-all
```
