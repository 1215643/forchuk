
#!/bin/bash
#
LOGFILE=/home/ec2-user/LOGFILE

LAST_180_MINS=$(date -d "180 minutes ago" +"%Y-%m-%d %H:%M:%S")
 
 echo "Fetching logs from $LAST_180_MINS to $TIMESTAMP..."
  
  journalctl --since "$LAST_180_MINS" >> "$LOGFILE"
   
   echo "Logs saved to $LOGFILE."                              
