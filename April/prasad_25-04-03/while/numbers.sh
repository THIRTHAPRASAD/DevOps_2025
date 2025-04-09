#!/bin/bash
num=1  #initailize the variable
while [ $num -le 5 ]; do
	echo "Number: $num"
	((num++))  #Increment num
done

