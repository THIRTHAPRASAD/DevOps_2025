#!/bin/bash
set -x
mkdir -p backup
old_file=(find . type f -name "*.sh" -mtime +7)
for file in $old_file
do
	mv $file backup/
	echo "moved $file to backup/"
done
