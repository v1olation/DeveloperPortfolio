# System profile evidence — Kali on WSL 2

Collected from the local Kali GNU/Linux Rolling environment on 25 November 2026. The filesystem and memory figures reflect the moment these commands ran.

## `uname -a`

```text
Linux LAPTOP-TEIEQ786 6.18.58.1-microsoft-standard-WSL2 #1 SMP PREEMPT_DYNAMIC Tue Oct 27 00:24:11 UTC 2026 x86_64 GNU/Linux
```

## `/etc/os-release`

```text
PRETTY_NAME="Kali GNU/Linux Rolling"
NAME="Kali GNU/Linux"
VERSION_ID="2026.2"
VERSION="2026.2"
VERSION_CODENAME=kali-rolling
ID=kali
ID_LIKE=debian
```

## `hostname` and `date`

```text
LAPTOP-TEIEQ786
Wed Nov 25 10:47:13 PM IST 2026
```

## `free -h`

```text
               total        used        free      shared  buff/cache   available
Mem:           7.6Gi       577Mi       6.8Gi       4.1Mi       410Mi       7.1Gi
Swap:          2.0Gi          0B       2.0Gi
```

## `df -h /`

```text
Filesystem      Size  Used Avail Use% Mounted on
/dev/sdd       1007G  4.5G  952G   1% /
```

These are real command outputs from the local environment. Add screenshots captured directly in Kali/WSL if the instructor requires terminal images.
