#!/bin/bash
services=("ssh" "apache2" "nginx")
log_file="/var/log/service_monitor.sh"
check_services() {
for svc in "${services[@]}"; do
	if systemctl is-active --quiet "$svc"; then
		echo " $(date): $svc is active" | tee -a "$log_file"
	else
		echo "$(date): $svc is inactive.Restarting ..." | tee -a "$log_file"
		sudo systemctl start "$svc" && echo "Restarting the service $svc" | tee -a "$log_file"
	fi
done
}

while true; do
	check_services
	echo "-----------------------------------------------------------------------------" >> "$log_file"
	sleep 30
done
