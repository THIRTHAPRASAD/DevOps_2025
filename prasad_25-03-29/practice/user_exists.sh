#!/bin/bash
read -p "Enter a name " uname
if id "$uname" &> /dev/null; then
	echo "user exists"
else
	echo "user does not exists"
fi

