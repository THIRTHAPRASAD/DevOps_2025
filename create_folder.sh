#!/bin/bash
#
#define the folder name with todays date
folder_name="$HOME/prasad_$(date +%y-%m-%d)"
#check if folder exists
if [ ! -d "$folder_name" ]; then
	mkdir -p "$folder_name"
	echo "created 📂folder with name "$folder_name""
	sudo mv "$folder_name" DevOps_2025/
	echo "moved folder "$folder_name" to DevOps_2025 folder"
else
	echo "✅ folder already exists: $folder_name"
fi

