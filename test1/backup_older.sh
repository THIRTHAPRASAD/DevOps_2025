#!/bin/bash
#find and copy all the log files 7 days old"
#
set -x
mkdir -p newbackup_$(date +%y-%m-%d)
find . -name "*.log" -type f -mtime +7 -exec cp {} newbackup_$(date +%y-%m-%d)/ \;
echo " coped all to newbackup_$(date +%y-%m-%d) folder"
