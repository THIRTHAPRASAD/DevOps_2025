#!/bin/bash
#Archive and delete log files 7 days old
#
mkdir -p backup
tar -czf backup/logs_$(date +%y-%m-%d).tar.gz *.log
#tar -czf backup/logs_$(date +%y-%m-%d).tar.gj *.log
find . -name "*.log" -type f -mtime +7 -delete
