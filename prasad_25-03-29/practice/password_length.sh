#!/bin/bash
echo "Enter a password"
read -s  password
if [[ "${#password}" -lt 8 ]]; then
	echo "Password must contain atleast 8 charcters long"
	exit 1
fi

if [[ ! "$password" =~ [A-Z] ]]; then
	echo "Password must contain atleast one uppercase letter"
	exit 1
fi

if [[ ! "$password" =~ [a-z] ]]; then
	echo "Password must contain atleast one lowercase letter"
	exit 1
fi

if [[ ! "$password" =~ [0-9] ]]; then
	echo "Password must contain atleast one digit"
	exit 1
fi

if [[ ! "$password" =~ [\@\#\$\%\^\&\*\(\)\_\+\!\~] ]]; then
	echo "Password must contain atleast one special character"
	exit 1
fi

echo "Password is strong"

