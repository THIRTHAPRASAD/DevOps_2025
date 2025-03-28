#!/bin/bash
read -p "Enter a filename " filename
if [ -e $filename ]; then
	echo "file $filename exists"
else
	echo "file does not exists"
fi

