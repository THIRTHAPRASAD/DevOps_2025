#!/bin/bash
echo "Enter the user Id: "
read user
if id "$user" &>/dev/null; then
	echo "yes"
else
	echo "no"
fi

