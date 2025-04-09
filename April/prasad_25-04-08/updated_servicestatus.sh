#!/bin/bash
service="nginx"
log_file="logfile.txt"
if systemctl is-active --quiet "$service"; then
	echo "$(date): $service is running" >> "$log_file"
else
	echo "$(date): $service is not running. Attempting to start..." >> "$log_file"
	sudo systemctl  start "$service"

	sleep 3  #time to start

	if systemctl is-active --quiet "$service"; then
		echo "$(date): SUCCESS $service started" >> "$log_file"
	else
		echo "$(date): ERROR $service Failed to start" >> "$log_file"
		echo "$(date): see the below details to know more" >> "$log_file"
		sudo journalctl -u "$service" -n 20 >> "$log_file"
	fi
fi


