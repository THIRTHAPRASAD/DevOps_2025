#!/bin/bash
#check if the website is reachable or Not
read -p "Enter the website url: " url
if ping -c 1 $url &>/dev/null; then
	echo "Website raechable"
else
	echo "Not reachable"
fi

