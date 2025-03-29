#!/bin/bash
#check if the process is running by name
read -p "Enter the process name " process
if pgrep "$process" &> /dev/null; then
	echo "process is running"
else
	echo "not running"
fi

