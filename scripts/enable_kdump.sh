#!/bin/bash
# Enable kdump on Ubuntu/Debian

echo "[*] Installing required packages..."
sudo apt update
sudo apt install -y linux-crashdump kexec-tools crash makedumpfile

