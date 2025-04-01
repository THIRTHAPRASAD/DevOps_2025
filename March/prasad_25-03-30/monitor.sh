#!/bin/bash
#Array of services list
services=("ssh" "nginx" "apache2")

#log file to store logs
log_file="/var/log/service_monitor.log"

check_services() {
for svc in "${services[@]}"; do
	if systemctl is-active --quiet "$svc"; then
		echo "$(date): $svc is active " | tee -a "$log_file"
	else
		echo "$(date): $svc is inactive.Restarting the $svc." | tee -a "$log_file"
		sudo systemctl start "$svc" && echo "$(date)Restarted $svc successfully | tee -a $log_file"
	fi
done
}

while true; do
	check_services
	echo "-------------------------------" >> "$log_file"
	sleep 30
done

