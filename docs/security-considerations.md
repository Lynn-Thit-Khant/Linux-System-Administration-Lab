# Security Considerations

## Firewall

firewalld was used to control inbound access to the Apache service.

## SELinux

SELinux was configured to allow Apache to bind to the custom port and access required web directories.

## SSH

SSH key authentication was used to reduce repeated password-based login.

## Web Access Protection

Apache Basic Authentication was used to restrict access to the secure web directory.

## Credentials

All credentials in this repository are placeholders. Real passwords and keys should never be committed to GitHub.
