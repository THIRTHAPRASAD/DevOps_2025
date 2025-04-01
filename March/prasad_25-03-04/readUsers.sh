#!/bin/bash
#
while IFS= read -r user
do
	echo "proccesing user: $user"
done < users.txt
