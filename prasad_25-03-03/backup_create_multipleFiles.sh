#!/bin/bash
for day in Monday Tuesday Wednesday Thursday Friday Saturday Sunday
do 
	mkdir -p "$day"
	echo "created $day folder"
done
