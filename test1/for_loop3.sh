#!/bin/bash
#for loop to count number of lines in all files
#
for file in *.bak
do
	lines=$(wc -l < $file)
	echo "$file has $lines lines"
done
