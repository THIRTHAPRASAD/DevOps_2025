#!/bin/bash
#check if a number is even or odd
read -p "Enter a number: " number
if (( $number % 2 == 0 )); then
	echo "Given number $number is even"
else
	echo "number is odd"
fi

