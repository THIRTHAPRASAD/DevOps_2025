#!/bin/bash
echo "Enter the file name: "
read fileName
if [ -f "$fileName" ]; then
	echo "File $fileName exists"
else
	echo "File $fileName doesn't exists"
fi

