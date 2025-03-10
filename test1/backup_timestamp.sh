#!/bin/bash
#copy all filesto backup file along with time stamp
#
folder_name="backup_$(date +%y-%m-%d)"
mkdir -p "$folder_name"
cp *.log "$folder_name/"
ls $folder_name
echo "All .log files copied to $folder_name folder"
