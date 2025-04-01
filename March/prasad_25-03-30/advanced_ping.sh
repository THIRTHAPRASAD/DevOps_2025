#!/bin/bash
server=("google.com" "yahoo.com" "amazon.com")
log_file="$HOME/server_monitor.log"
while true; do
	for servers in "${server[@]}"; do
		if ping -c 1 "$servers" &>/dev/null; then
			echo "$(date) : $servers is running" | tee -a "$log_file"
		else
			echo "$(date) : $servers is down" | tee -a "$log_file"
		fi
	done
	echo "========== $(date) ==========" >> "$log_file"
	sleep 30
done
