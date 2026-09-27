#!/usr/bin/env bash
set -euo pipefail
TARGET="${1:?Usage: $0 <AUTHORIZED_TARGET>}"
mkdir -p evidence/nmap
sudo nmap -sS -sU -sV -O -Pn -T3 --top-ports 1000 "$TARGET" -oA evidence/nmap/full_audit
