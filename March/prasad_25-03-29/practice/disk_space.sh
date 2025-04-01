#!/bin/bash
threshold=80
usage=$(df / | grep '/' | awk '{print $5}' | tr -d '%')
if [[ "$usage" -ge "$threshold" ]]; then
	echo " *******Alert******"
else
	echo "Disk space usage is below 80%"
fi

