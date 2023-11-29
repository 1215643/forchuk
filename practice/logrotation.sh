#!/bin/bash
logfile=/var/log/hawkey.log
numofbackups=3

if [ -f $logfile ]
then
	for ((i=$numofbackups; i>1; i--)); do
	prev=$((i - 1))
	       if	 [ -f "$logfile.$prev" ]
	       then
		       mv "$logfile.$prev" "$logfile.$i" 
	       fi
		done 
		if [ -f "$logfile" ]
		then
			mv "$logfile" "$logfile.1"
		fi
		
			touch $logfile
			echo "logfile created"
		else
			echo "logfile notfound"
		fi



		#!/bin/bash
		#
		#log_file="/var/log/dnf.log"
		#num_backups=5
		#
		## Check if the log file exists before performing log rotation
		#if [ -f "$log_file" ]; then
		# for ((i=$num_backups; i>1; i--)); do
		#  prev=$((i-1))
		#    [ -f "$log_file.$prev" ] && mv "$log_file.$prev" "$log_file.$i"
		#    done
		#      [ -f "$log_file" ] && mv "$log_file" "$log_file.1"
		#        touch "$log_file"
		#          echo "Log file created"
		#           else
		#             echo "Log file not found: $log_file"
		#              fi
