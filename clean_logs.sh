#!/bin/bash

# Root Control
if [ "$EUID" -ne 0 ]; then
    echo "This script must be run as root."
    exit 1
fi

# Log Directory Address
log_dir="/var/log"
# Backup Log Directory Address
backup_dir="/var/log/backup"
retention_days=3

if [ ! -d "$backup_dir" ]; then
    mkdir -p "$backup_dir"
    echo "Backup directory created: $backup_dir"
fi

find "$log_dir" -type f -mtime +$retention_days -exec mv {} "$backup_dir" \;
echo "Logs older than $retention_days days moved to backup."

find "$backup_dir" -type f -mtime +6 -exec rm {} \;
echo "Backups older than 6 days have been deleted."

echo "Log cleaning completed."
exit 0
