# Lab 2: Shell Scripting Basics 1

## Objective
Schedule a script to run daily at 5:00 PM that automates checking disk space usage for the root file system and sends an email alert if usage exceeds a specified threshold (10%).

## Script Details
- **Script Name**: `ck_disk_usage.sh`
- **Functionality**:
  - Monitors disk usage on the root file system.
  - Sends an email alert if disk usage exceeds 10%.

## Prerequisites
- Ensure `mail` utility is installed and configured for email alerts:
  ```bash
  sudo apt install mailutils

