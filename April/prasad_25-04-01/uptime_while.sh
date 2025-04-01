#!/bin/bash
while true; do
	echo "CPU load at time: $(date) " | tee -a "continuos_monitoring.log"
	uptime | tee -a "continuos_monitoring.log"
	sleep 300
done

