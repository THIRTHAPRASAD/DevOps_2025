#!/bin/bash
#check for services running
services=("nginx" "apache" "ssh")
for svc in "${services[@]}"; do
	if systemctl is-active --quiet "$svc"; then
		echo "service $svc is running"
	else
		echo "service $svc is inactive"
	fi
done

