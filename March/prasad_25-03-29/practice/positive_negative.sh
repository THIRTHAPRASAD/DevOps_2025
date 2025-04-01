#!/bin/bash
read -p "Enter a number " num
if [[ "$num" -gt 0 ]]; then
	echo "psoitive number"
elif [[ "$num" -lt 0 ]]; then
	echo "Negative number"
else
	echo " Number is zero"
fi

