#!/bin/bash
threshold=80
usage=$(df / | grep '/' | awk '{print $5}' | tr -d '%')
if [[ "$usage" -ge "$threshold" ]]; then
	echo " *******Alert******"
else
	echo "oaky"
fi

