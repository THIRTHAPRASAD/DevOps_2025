#!/bin/bash
file="check_service.sh"
if [[ -r "$file" ]]; then
	echo "$file is readable"
fi

if [[ -w "$file" ]]; then
	echo "$file is writable"
fi

if [[ -x "$file" ]]; then
	echo "$file is executable"
fi



