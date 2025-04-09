#!/bin/bash
process="ssh"
while pgrep -x "$process"; do
	echo "$process is still running..."
	sleep 5
done
echo "$process has stopped"

