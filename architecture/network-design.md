# Network Design

The lab uses static IP addressing and local hostname resolution to simulate predictable client-server communication.

## Key Configurations

- Static IP assignment
- Hostname configuration
- Local name resolution through `/etc/hosts`
- Connectivity testing using `ping`
- Browser access using hostname and IP address

## Example Host Mapping

```text
192.168.85.131 server.p2338813.com www.p2338813.com
192.168.85.132 client.p2338813.com
```

## Why Static IPs Were Used

Static IP addresses make the environment predictable and easier to troubleshoot. This is important for services such as SSH, Apache, rsync, and Nextcloud, where clients need to consistently reach the server.
