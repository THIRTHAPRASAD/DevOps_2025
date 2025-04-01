#!/bin/bash
#touch cpu_monitor.log
for i in {1..5}; do
	echo "CPU load at $(date): " | tee -a "cpu_monitor.log"
	uptime | tee -a "cpu_monitor.log"
	sleep 2
done

