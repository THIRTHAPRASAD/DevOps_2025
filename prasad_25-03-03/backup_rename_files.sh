#!/bin/bash
for file in *.sh
do
	mv $file "backup_$file"
	echo "$file moved"
done

