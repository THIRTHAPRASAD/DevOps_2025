#!/bin/bash
#process only directories froma directory
for dir in /home/ubuntu/DevOps_2025/prasad_25-03-30/*; do
	if [ -d "$dir" ]; then
		echo "$dir"
	fi
done

