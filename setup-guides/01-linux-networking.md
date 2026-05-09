# Linux Networking Setup

## Purpose

Configure static IP addressing, hostnames, and local name resolution for a predictable client-server environment.

## Steps

### Set Hostname

Server:

```bash
sudo hostnamectl set-hostname server.p2338813.com
```

Client:

```bash
sudo hostnamectl set-hostname client.p2338813.com
```

### Configure Static IP

Check the current interface name:

```bash
nmcli connection show
ip a
```

Configure a static IP address:

```bash
sudo nmcli connection modify ens160 ipv4.method manual ipv4.addresses 192.168.85.131/24 ipv4.gateway 192.168.85.2 ipv4.dns 8.8.8.8
sudo nmcli connection down ens160
sudo nmcli connection up ens160
```

### Configure Local Hostname Resolution

Edit the hosts file:

```bash
sudo nano /etc/hosts
```

Example:

```text
192.168.85.131 server.p2338813.com www.p2338813.com
192.168.85.132 client.p2338813.com
```

## Validation

```bash
ip a
ping server.p2338813.com
ping www.p2338813.com
```

## Notes

Static IP addressing helps avoid service access issues caused by changing DHCP addresses.
