#!/bin/bash
#check whether the given number is positive or negative or zero
read -p "Enter a number " num
#if (( "$num % 2" == 0 )); then
if [[ "$num" -gt 0 ]]; then
	echo "number is positive"
elif [[ "$num" -lt 0 ]]; then
	echo "number is negative"
else
	echo "number is zero"
fi

