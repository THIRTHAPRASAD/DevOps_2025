#!/bin/bash
read -p "Enter anumber " num
if (( "$num % 2" == 0 )); then 
	echo "Number is even"
else
	echo "odd"
fi

