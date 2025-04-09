#!/bin/bash
file="tmp/testfile.txt"
echo "waiting for $file to be created..."
while [ ! -f "$file" ]; do
	sleep 2
done
echo "file $file created"
