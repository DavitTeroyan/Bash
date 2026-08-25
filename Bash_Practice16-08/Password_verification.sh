#!/bin/bash

password=secret123
counter=0

while [[ "$counter" -lt 3 ]]; do
	read -p "input password: " input
	if [[ "$input" == "$password" ]]; then
		echo "true password"
		break;
	elif [[ "$input" != "$password" ]]; then
		echo "error"
	fi
	((counter++))
done

			
		
