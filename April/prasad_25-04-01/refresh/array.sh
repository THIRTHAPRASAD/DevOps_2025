#!/bin/bash
#Lopp through an array
numbers=("one" "two" "three")
for num in "${numbers[@]}"; do
	echo "Number :$num"
done

