#!/bin/bash
#check if the given number is even or odd
read -p "Enter the number: " number
if (( number % 2 == 0 )); then
	echo "number is evn"
else
	echo "number is odd"
fi


