# Server Performance Stats

A simple Bash-based monitoring script that gathers key system performance metrics from a Linux server and prints them in a readable report.

## Overview

This project helps you quickly inspect the health and resource usage of a machine without installing extra tools. It reports essential information such as:

- Hostname and kernel version
- System uptime
- Current logged-in users
- Load average
- Total CPU usage
- Total memory usage
- Disk usage
- Top processes by CPU and memory consumption

## Why this project exists

The script is useful for system administrators, developers, and anyone who wants a fast snapshot of server performance. It is lightweight, easy to run, and works well for quick troubleshooting or monitoring from the terminal.

## How to use it

1. Make the script executable:
   ```bash
   chmod +x server-stats.sh
   ```
2. Run it:
   ```bash
   ./server-stats.sh
   ```

## Example output

The script prints a formatted report similar to:

```text
Server Statistics Report
========================
Sytem Information:
Hostname: my-server
Kernel Version: Linux 5.15.0
Uptime: 2 days, 4 hours
Current Users: 3
Load Average: 0.37, 0.42, 0.35
========================
CPU Usage: 18.2%
Top 5 processes by CPU usage:
  PID COMMAND %CPU
...
========================
RAM Usage: 51.3%
Top 5 processes by memory usage:
...
========================
Disk Usage: 62%
```

## Project goal

This project is designed to provide a quick and practical overview of a server’s status directly from the command line, making it easier to monitor performance and spot resource bottlenecks.

Project Idea:
roadmap.sh - DevOps Projects : https://roadmap.sh/projects/server-stats
