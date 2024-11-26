# Log Cleaner Script
A Bash script for cleaning and backing up log files in a Linux environment. This script helps manage log files by moving older files to a backup directory and removing backups that exceed a specified retention period.

## Features
- Identifies and moves log files older than a specified number of days.
- Automatically creates a backup directory if it doesn't exist.
- Deletes old backup files beyond a retention period.
- Provides user-friendly messages during execution.

## Technologies
- **Bash**: For scripting.
- **Linux**: Designed for Linux Systems
- **Core Utilities**: `find`, `mkdir`, `mv`, `rm`.

## Requirements
- Linux environment.
- Root privileges to access `/var/log` or other system directories.
 
## Usage
1. Clone the repository:
   ```bash
   git clone https://github.com/xNightwielder/log-cleaner-script
   cd log-cleaner-script
2. Grant execution permissions to the script:
   ```bash
   chmod +x clean_logs.sh
3. Run the script with root privileges:
   ```bash
   sudo ./clean.logs.sh

## Script Details
- Default Log Directory: /var/log
- Default Backup Directory: /var/log/backup
- Retention Period: 3 days for logs, 6 days for backups.

## Customization
You can modify the script variables to suit your needs:
- log_dir: Change the log directory to another path.
- backup_dir: Specify a different backup location.
- retention_days: Adjust the number of days for log retention.

## Example Output
Backup directory created: /var/log/backup  
Logs older than 3 days moved to backup.  
Backups older than 6 days have been deleted.  
Log cleaning completed.  

## Future Enhancements
- Provide command-line arguments for customization.
