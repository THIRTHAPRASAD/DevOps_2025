#!/bin/bash
#Disk space alerts
threshold=80
usage=$(df / | grep '/' | awk '{print $5}' | tr -d '%')
if [[ $usage -ge $threshold ]]; then
	echo "Disk space utilisation exceeds 80% *********Alert Alert*************"
else
	echo "Everything is fine"
fi
