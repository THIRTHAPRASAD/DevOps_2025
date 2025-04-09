#!/bin/bash
while true; do
	echo "Enter a command 'exit' to quit the loop"
	read input
	if [[ "$input" == "exit" ]]; then
		echo "Exiting......."
		break
	else
		echo "you entered $input"
	fi
done

