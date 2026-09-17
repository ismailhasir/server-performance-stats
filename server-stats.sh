#!/bin/bash

echo "Server Statistics Report"

echo "========================"

echo "Sytem Information:"
echo "Hostname: $(hostname)"
echo "Kernel Version: $(uname -s) $(uname -r)"
echo "Uptime: $(uptime -p)"
echo "Current Users: $(who | wc -l)"
echo "Load Average: $(uptime | awk -F'load average:' '{ print $2 }')"

echo "========================"

#Task-1: Total CPU Usage
top -bn1 | awk -F',' '/Cpu\(s\)/ {printf "CPU Usage: %.1f%%\n", 100-$4}'
echo "Top 5 processes by CPU usage:" #Task-4: Top 5 processes by CPU usage
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6
echo "========================"

#Task-2: Total memory usage (Free vs Used including percentage)
free | awk '/Mem:/ {printf "RAM Usage: %.1f%%\n", $3/$2*100}'
echo "Top 5 processes by memory usage:" #Task:5: Top 5 processes by memory usage
ps -eo pid,comm,%mem --sort=-%mem | head -n 6
echo "========================"

#Task-3: Total disk usage (Free vs Used including percentage)
df / | awk 'NR==2 {printf "Disk Usage:%s\n",$5}'






