#!/bin/bash
#
# Set the threshold for disk space usage (in percentage)
THRESHOLD=70

# Get disk space usage percentage for the root file system
DISK_USAGE=$(df -h / | awk 'NR==2 {print $5}' | cut -d'%' -f1)

# Email settings
RECIPIENT="vtu12756@veltech.edu.in"
SUBJECT="Disk Space Alert"
BODY="Disk space usage is above the threshold. Current usage: $DISK_USAGE%"

# Check if disk usage exceeds the threshold
if [ "$DISK_USAGE" -gt "$THRESHOLD" ]; then
    echo "$BODY"
        # Send an email
            echo "$BODY" | mailx -s "$SUBJECT" "$RECIPIENT"
                # Add additional actions if needed
                else
                    echo "Disk space usage is below the threshold. Current usage: $DISK_USAGE%"
                        # Add actions to take when disk usage is below the threshold
                            # For example, continue with normal operations
                            fi

