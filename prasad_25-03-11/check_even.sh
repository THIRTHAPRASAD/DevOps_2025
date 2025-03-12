#!/bin/bash
echo "Enter the number: "
read number
if (($number%2 == 0 ));then
	echo "even"
else
	echo "other"
fi
