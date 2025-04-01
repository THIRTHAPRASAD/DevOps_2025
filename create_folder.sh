#!/bin/bash
base_dir="$HOME/DevOps_2025/$(date +"%B")"
folder_name="$base_dir/prasad_$(date +%y-%m-%d)"
if [[ ! -e "$folder_name" ]]; then
	mkdir -p "$folder_name"
	echo "Folder $folder_name is created"
else
	echo "folder already exists"
fi

