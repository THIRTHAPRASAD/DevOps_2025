#!/bin/bash
count=5
while [ $count -gt 0 ]; do
	echo "countdown: $count"
	sleep 1
	(( count -- ))
done

echo "Times Up"

