#!/bin/bash
service="nginx"
if systemctl is-active --queit "$service";  then
	echo "$service is running"
else
	echo "$service is not running"
	sudo systemctl start "$service"
	echo "$service started successfully"
fi
