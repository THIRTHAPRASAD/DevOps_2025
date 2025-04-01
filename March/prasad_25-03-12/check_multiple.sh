#!/bin/bash
#
for file in *.sh; do
	if [[ ! -e "$file" ]]; then
		echo "File "$file" does not exists"
	continue
	fi
	echo "Checking for file permissions"
	if [ -r "$file" ]; then
		echo ""$file" is Readable"
	else
		echo ""$file" is Not Readable"
	fi

	#[[ -r "$file" ]] && echo ""$file" is Readable" || echo " Not Readable"
	[[ -w "$file" ]] && echo ""$file" is Writable" || echo ""$file" is Not Writable"
	[[ -x "$file" ]] && echo ""$file" is Executable" || echo ""$file" is Not Executable"

	echo "--------------------------------------------------------------"
done

