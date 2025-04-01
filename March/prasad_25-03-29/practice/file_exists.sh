#!/bin/bash
read -p "Enter a file name " file
if [[ -e "$file" ]]; then
	echo "file exists"
else
	echo "file does not exists"
fi

