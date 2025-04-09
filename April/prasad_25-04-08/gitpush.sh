#!/bin/bash
read -p "Enter acommit msg" msg
git add .
git commit "$msg"
git push origin main
