#!/bin/bash

# Sleep based on uptime minutes and seconds (optional logic)
sleep $(uptime -s | awk -F '[: ]' '{printf "%d\n", ($5 % 10) * 60 + $6}')

# System Information
arc=$(uname -a)
pcpu=$(grep "physical id" /proc/cpuinfo | sort -u | wc -l)
vcpu=$(grep "^processor" /proc/cpuinfo | wc -l)

# Memory
fram=$(free -m | awk '$1 == "Mem:" {print $2}')
uram=$(free -m | awk '$1 == "Mem:" {print $3}')
pram=$(free -m | awk '$1 == "Mem:" {printf("%.2f"), $3/$2*100}')

# Disk
fdisk=$(df -BG | grep '^/dev/' | grep -v '/boot$' | awk '{ft += $2} END {print ft}')
udisk=$(df -BG | grep '^/dev/' | grep -v '/boot$' | awk '{ut += $3} END {print ut}')
pdisk=$(df -BG | grep '^/dev/' | grep -v '/boot$' | awk '{ut += $3; ft += $2} END {printf("%.2f"), ut/ft*100}')

# CPU load
cpul=$(top -bn1 | grep '^%Cpu' | awk '{printf("%.1f%%", $2 + $4)}')

# Last boot
lb=$(who -b | awk '$1 == "system" {print $3 " " $4}')

# LVM use
lvmu=$(if [ $(lsblk | grep "lvm" | wc -l) -eq 0 ]; then echo "no"; else echo "yes"; fi)

# Active TCP connections
ctcp=$(ss -Ht state established | wc -l)

# Logged-in users
ulog=$(users | wc -w)

# Network
ip=$(hostname -I | awk '{print $1}')
mac=$(ip link show | grep "ether" | awk '{print $2}')

# Sudo commands used
cmds=$(journalctl _COMM=sudo | grep COMMAND | wc -l)

# Broadcast system report
wall "
    #Architecture: $arc
    #CPU physical: $pcpu
    #vCPU: $vcpu
    #Memory Usage: $uram/${fram}MB ($pram%)
    #Disk Usage: $udisk/${fdisk}Gb ($pdisk%)
    #CPU load: $cpul
    #Last boot: $lb
    #LVM use: $lvmu
    #Connections TCP: $ctcp ESTABLISHED
    #User log: $ulog
    #Network: IP $ip ($mac)
    #Sudo: $cmds cmd
"

