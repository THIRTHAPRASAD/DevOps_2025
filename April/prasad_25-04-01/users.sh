#!/bin/bash
#for user in user1 user2 user3; do
users=("user1" "user2" "user3")
for user in "${users[@]}"; do
	sudo useradd "$user"
	echo "$user created"
done

