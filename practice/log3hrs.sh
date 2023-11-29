#!/bin/bash
logfile=/home/ec2-user/LOGFILE

last180min=$(date -d "180 minutes ago" +"%Y-%m-%d-%H-%M-%S")

echo fetching logs from "$last180min to now"

journalctl --since "$last180min" >> "$logfile"

echo logs are saved to "$logfile"




#!/bin/bash
##
#LOGFILE=/home/ec2-user/LOGFILE
#
#LAST_180_MINS=$(date -d "180 minutes ago" +"%Y-%m-%d %H:%M:%S")
# 
#  echo "Fetching logs from $LAST_180_MINS to $TIMESTAMP..."
#    
#      journalctl --since "$LAST_180_MINS" >> "$LOGFILE"
#         
#            echo "Logs saved to $LOGFILE."
