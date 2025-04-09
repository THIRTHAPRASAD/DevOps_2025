#!/bin/bash
cd /home/ubuntu/DevOps_2025

#check for unstagged changes
if git diff --quiet && git diff --cached --quiet; then
	echo "NO changes to commit."
	exit 0
fi

# prompt for commit message
read -p "Enter a commit message " msg

#Run git commands
git add .
git commit -m "$msg"
git push origin main

echo "Changes pushed to remote repo successfully"
