#!/bin/bash

# Author: Adriano Freitas
# Email: contact@adrianofreitas.me
# Description: Simple bash script to show system info...

# Settings vars
HOST=$(hostname)
DATE=$(date)
UPTIME=$(uptime)
KERNEL=$(uname -r)
CPUNO=$(cat /proc/cpuinfo | grep "model name" |wc -l)
CPUMODEL=$(cat /proc/cpuinfo | grep "model name" |head -n1|cut -c14-)
MEMTOTAL=$(expr $(cat /proc/meminfo |grep MemTotal|tr -d ' '|cut -d: -f2|tr -d -d kB) / 1024)

#FILESYS=$(df -h|egrep -v '(tmpfs|udev)')
FILESYS=$(lsblk)


echo "===================================="
echo "Machine: $HOST"
echo "Date: $DATE"
echo "===================================="
echo "uptime: $UPTIME"
echo "Kernel: $KERNEL"
echo "CPU Model: $CPUMODEL"
echo "CPU N#: $CPUNO"
echo "Mem Total: $MEMTOTAL"
echo "File system: $FILESYS"
