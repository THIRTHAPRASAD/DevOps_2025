#!/bin/bash
for user in user1 user2 user3; do
	if id "$user" &>/dev/null; then
		echo "$user exists"
	else
		sudo useradd "$user"
		echo "user added successfully"
	fi
done

