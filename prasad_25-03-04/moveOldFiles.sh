#!/bin/bash
#
mkdir -p backup
for file in $(find . -name "*.log" -type f -mtime +7)
do
	mv $file "backup/"
	echo "Moved $file to backup folder"
done

