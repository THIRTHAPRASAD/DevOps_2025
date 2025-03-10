#!/bin/bash
backup_folder=backup_$(date +%y-%m-%d)
mkdir -p $backup_folder
find . -name "*.log" -type f -mtime +7 -exec mv {} "$backup_folder/" \;
echo "moved old files to $backup_folder"
