#!//bin/bash

file=$1

if [ -e "$file" ]; then
	echo "File exists."

	if [ -x "$file" ]; then
		echo "The file has execute permission."
	else
		echo "The file does not have execute permission."
	fi

	if [ -w "$file" ]; then
		echo "The file has write permission."
	else
		echo "The file does not have write permission."
	fi
	
else
	echo "File does not exist."
fi	

