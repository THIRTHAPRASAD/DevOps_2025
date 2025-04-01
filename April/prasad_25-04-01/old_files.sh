#!/bin/bash
for file in $(find /var/log -type f -mtime +7); do
	rm $file
	echo "$file removed"
done

