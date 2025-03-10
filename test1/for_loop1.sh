#!/bin/bash
#for loop to rename all .txt files to .bak files
#
for file in *.txt
do
	mv "$file" "${file%.txt}.bak"
	echo "Renamed $file to ${file%.txt}.bak"
done

