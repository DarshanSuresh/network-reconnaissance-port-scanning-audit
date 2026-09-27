#!/usr/bin/env bash
set -euo pipefail
TARGET="${1:?Usage: $0 <AUTHORIZED_TARGET>}"
mkdir -p evidence/nmap
sudo nmap -O -Pn -T3 "$TARGET" -oA evidence/nmap/os_detection
