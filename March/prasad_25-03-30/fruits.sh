#!/bin/bash
#Loop through an array
fruits=("apple","Banana")
for fruit in "${fruits[@]}"; do
	echo "Fruits are $fruit"
done

