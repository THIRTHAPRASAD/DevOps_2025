#!/bin/bash
#processing only files in the directory
for file in /home/ubuntu/DevOps_2025/prasad_25-03-30/*; do
	if [ -f "$file" ]; then
		echo "$file"
	fi
done

