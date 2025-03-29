#!/bin/bash
#check for strong password requirements
echo "Enter a password "
read -s password

#check for password length
if [[ ${#password} -lt 8 ]]; then
	echo "Password must contain atleast 8 charaters long."
	exit 1
fi

#check for upper case letter
if [[ ! "$password" =~ [A-Z] ]]; then
	echo "Password must contain atleast one uppercase letter"
	exit 1
fi

#check for lower case letter
if [[ ! "$password" =~ [a-z] ]]; then
	echo "Password must contain atleast one lowercase letter"
	exit1
fi

#check for atleast one digit
if [[ ! "$password" =~ [0-9] ]]; then
	echo "Password must contain atleast one digit"
	exit 1
fi

#check for atleast one special chaeracter"
if [[ ! "$password" =~ [\~\!\@\#\$\%\^\&\*\(\)\_\+] ]]; then
	echo "Password must contain atleast one specialcharcter"
	exit 1
fi

echo "password is strong"


