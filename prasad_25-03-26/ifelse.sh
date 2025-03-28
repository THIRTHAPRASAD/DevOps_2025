#!/bin/bash
#script tocheck the number is gt or et 10
read -p "Enter a number: " number
if [ $number -ge 10 ]; then
	echo "Number is greater than or equal to 10"
else
	echo "Less than 10"
fi

