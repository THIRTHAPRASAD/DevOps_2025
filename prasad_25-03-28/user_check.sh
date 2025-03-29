#!/bin/bash
#check whether the given user exists or not
read -p "Enter your user name: " uname
if  id $uname &>/dev/null ; then
	echo "user exists"
else
	echo "user does not exists"
fi

