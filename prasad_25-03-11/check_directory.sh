#!/bin/bash
echo "Enter the directory name: "
read dirName
if [ -d $dir ]; then
	echo "exists"
else
	echo "no"
fi

