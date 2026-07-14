#!/bin/bash
# Safe lab traffic generation script for the INCS 615 project demo.
# Use only inside your own authorized lab network.

TARGET=${1:-192.168.5.9}

echo "[+] Generating safe lab traffic to $TARGET"

echo "[+] ICMP ping test"
ping -c 4 "$TARGET"

echo "[+] Basic service/version scan"
nmap -sV "$TARGET"

echo "[+] Test completed"
