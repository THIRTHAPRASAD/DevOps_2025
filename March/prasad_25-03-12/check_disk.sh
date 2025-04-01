#!/bin/bash
#usage=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')
usage=$(df / --output=pcent | tail -n 1 | tr -d '%')
if [[ "$usage" -gt 80 ]]; then
	echo "warning"
else
	echo "cool"
fi

	
	

