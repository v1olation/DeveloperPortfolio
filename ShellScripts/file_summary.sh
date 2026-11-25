#!/usr/bin/env bash
# Safely summarize regular files in a directory without changing them.
set -euo pipefail

if [[ $# -ne 1 || ! -d "$1" ]]; then
  printf 'Usage: %s DIRECTORY\n' "$0" >&2
  exit 2
fi

root=$1
printf 'Directory: %s\n' "$(cd -- "$root" && pwd)"
printf 'Regular files: '
find "$root" -type f -print | wc -l
printf 'Directories: '
find "$root" -type d -print | wc -l
printf 'Total size: '
du -sh -- "$root"
