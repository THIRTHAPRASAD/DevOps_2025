#!/bin/bash
#compress all .log files into .tar.gz archive
#mkdir -p backup
tar -czf backup/logs_$(date +%y-%m-%d).tar.gz *.log
echo "copied all .log files and compressed into backup/logs_$(date +%y-%m-%d).tar.gz"

