#!/bin/bash
if ping -c 1 google.com &> /dev/null; then
	echo "reachable"
else
	echo "not reachable"
fi
