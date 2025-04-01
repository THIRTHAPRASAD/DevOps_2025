#!/bin/bash
uptime_minutes=$(awk '{print $1/60}' /proc/uptime)
if (( $(echo "$uptime_minutes > 60" | bc -l) )); then
	    echo "System has been running for more than an hour."
    else
	        echo "System uptime is less than an hour."
fi
