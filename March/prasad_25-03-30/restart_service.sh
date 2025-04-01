#!/bin/bash
#check if the services running and restart the inactive service
services=("ssh" "nginx" "apache2")
for svc in "${services[@]}"; do
	if systemctl is-active --quiet "$svc"; then
		echo "Service $svc is running"
	else
		echo "Service $svc is inactive &&& Restarting"
		sudo systemctl restart "$svc" && echo "Service $svc restarted successfully"
	fi
done

