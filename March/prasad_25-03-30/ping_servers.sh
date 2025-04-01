#!/bin/bash
servers=("google.com" "yahoo.com" "amazon.com")
for server in "${servers[@]}"; do
	if ping -c 1 "$server" &>/dev/null; then
		echo "$server is reachable"
	else
		echo "$server is unreachable"
	fi
done
