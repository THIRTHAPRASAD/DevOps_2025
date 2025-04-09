#!/bin/bash
for file in $(find /var/log -type f -mtime +7); do
	rm "$file"
	echo "Files: $file deleted"
done

