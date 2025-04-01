#!/bin/bash
#To check the uptime of the server
uptime_minutes=$(awk '{print $1/60}' /proc/uptime)
if (( $( echo "uptime_minutes > 60" | bc -l) )); then
	echo "system is running for more than an hour"
else
	echo "system uptime is less than an hour"
fi	
