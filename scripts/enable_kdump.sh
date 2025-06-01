#!/bin/bash
# Enable kdump on Ubuntu/Debian

echo "[*] Installing required packages..."
sudo apt update
sudo apt install -y linux-crashdump kexec-tools crash makedumpfile

echo "[*] Enabling kdump..."
sudo systemctl enable kdump
sudo systemctl start kdump

echo "[*] kdump status:"
systemctl status kdump