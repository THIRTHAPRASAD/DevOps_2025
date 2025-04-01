#!/bin/bash
#check if the file exists or not
read -p "Enter a file name: " filename
if [[ -e $filename ]]; then
	echo "File $filename exists"
else
	echo "File $filename doesnot exists"
fi

