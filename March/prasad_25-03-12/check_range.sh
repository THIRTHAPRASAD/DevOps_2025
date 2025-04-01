#!/bin/bash
echo "Enter a number: "
read number
if [[ "$number" -gt 0 ]]; then
	if [[ "$number" -lt 10 ]]; then
		echo "Number $number is less than 10"
	else
		echo "Number $number is greater than or equal to  10"
	fi
else
	echo "Number is negative or zero"
fi

