#!/usr/bin/env bash
# Print a compact system report using standard Linux utilities.
set -u

printf '=== System Report ===\n'
printf 'Host: '; hostname 2>/dev/null || printf 'unavailable\n'
printf 'Date: '; date
printf 'Kernel: '; uname -srmo
printf '\n=== Uptime ===\n'
uptime 2>/dev/null || printf 'uptime command unavailable\n'
printf '\n=== Memory ===\n'
if command -v free >/dev/null 2>&1; then free -h; else printf 'free command unavailable\n'; fi
printf '\n=== Disk usage ===\n'
df -h . 2>/dev/null || printf 'df command unavailable\n'
printf '\n=== Top processes ===\n'
ps -eo pid,comm,%cpu,%mem --sort=-%cpu 2>/dev/null | head -n 6 || printf 'ps command unavailable\n'
