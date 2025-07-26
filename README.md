# Linux Hardening using CIS Benchmarks

This project provides a basic implementation of Linux server hardening aligned with the Center for Internet Security (CIS) benchmarks.

## 🔐 What This Project Does
- Disables root login over SSH
- Enforces strong password policies
- Configures UFW firewall (Ubuntu)
- Removes unused services
- Generates a Lynis audit report

## 📂 Project Files
- `cis_hardening.sh`: Bash script to apply secure configs
- `example_lynis_report.txt`: Sample audit report
- `cis_hardening_checklist.pdf`: Security checklist (based on CIS)
- `README.md`: This documentation

## 🛠️ Tools Used
- Bash
- Lynis
- UFW (for firewall)
- Auditd

## 📄 How to Use
```bash
chmod +x cis_hardening.sh
sudo ./cis_hardening.sh
```

## 📊 Sample Output
- Secure SSH configuration
- Root login disabled
- UFW default-deny with allowed SSH
- Lynis report saved to file

## 🧑‍💻 Author
Rakshana Kannaya Muralidharan – Cybersecurity Master's student at RMIT

_Last updated: 2025-07-25_
