#!/usr/bin/env bash
set -euo pipefail
TARGET="${1:?Usage: $0 <AUTHORIZED_TARGET>}"
mkdir -p evidence/nmap
sudo nmap -sU -Pn -T3 --top-ports 100 "$TARGET" -oA evidence/nmap/udp_top100
