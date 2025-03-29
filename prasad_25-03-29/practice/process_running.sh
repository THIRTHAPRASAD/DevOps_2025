#!/bin/bash
read -p "Enter a process" process
if pgrep "$process" &> /dev/null; then
	echo "process is running"
else
	echo "not running"
fi

