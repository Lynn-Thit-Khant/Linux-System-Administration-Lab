# SSH Access Setup

## Purpose

Enable secure remote administration between the client and server using SSH key authentication.

## Steps

### Generate SSH Key

Run this on the client:

```bash
ssh-keygen
```

### Copy Public Key to Server

```bash
ssh-copy-id student@server.p2338813.com
```

### Test SSH Login

```bash
ssh student@server.p2338813.com
```

## Validation

Check SSH service status:

```bash
systemctl status sshd
```

Check that the public key was added:

```bash
ls ~/.ssh/authorized_keys
```

## Notes

SSH key authentication reduces repeated password entry and supports secure automation workflows such as rsync-based file synchronisation.
