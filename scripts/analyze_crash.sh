#!/bin/bash
# Analyze the most recent crash dump

VMCORE_DIR="/var/crash"
VMLINUX="/usr/lib/debug/boot/vmlinux-$(uname -r)"

if [ ! -f "$VMLINUX" ]; then
    echo "[!] vmlinux debug symbol file not found at $VMLINUX"
    exit 1
fi

echo "[*] Launching crash tool..."
sudo crash "$VMLINUX" "$VMCORE_DIR"/*/vmcore