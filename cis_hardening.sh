#!/bin/bash
# CIS Hardening Script (Basic)

# Disable root login via SSH
sed -i 's/^PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config
systemctl restart sshd

# Enforce UFW firewall with SSH only
ufw default deny incoming
ufw default allow outgoing
ufw allow ssh
ufw enable

# Remove unused packages
apt remove -y telnet ftp rsh

# Install Lynis and run audit
apt update && apt install -y lynis
lynis audit system > example_lynis_report.txt

echo "Hardening complete. Report saved to example_lynis_report.txt"
