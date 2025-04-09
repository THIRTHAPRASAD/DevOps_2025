#!/bin/bash
#Ensure we are inside a Git repository
if [ ! -d ".git" ]; then
	    echo "❌ Not a Git repository. Exiting."
	        exit 1
fi
#check for unstaged or staged changes
if git diff --quiet && git diff --cached --quiet; then
	echo "No changes to add"
	exit 0
fi

#prompt for commit message
read -p "Enter the commit msg " msg
if [[ -z "$msg" ]]; then
	    echo "⚠️ Commit message cannot be empty. Exiting."
	        exit 1
fi
#Run git commands
git add .
git commit -m "$msg"
git push origin main
