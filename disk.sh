#!/bin/bash
#
# Set the threshold for disk space usage (in percentage)
THRESHOLD=70

# Get disk space usage percentage for the root file system
DISK_USAGE=$(df -h / | awk 'NR==2 {print $5}' | cut -d'%' -f1)

# Check if disk usage exceeds the threshold
if [ "$DISK_USAGE" -gt "$THRESHOLD" ]; then
    echo "Disk space usage is above the threshold. Current usage: $DISK_USAGE%"
        # Add actions to take when disk usage exceeds the threshold
            # For example, send an alert or delete old files
            else
                echo "Disk space usage is below the threshold. Current usage: $DISK_USAGE%"
                    # Add actions to take when disk usage is below the threshold
                        # For example, continue with normal operations
                        fi
                      
		    
