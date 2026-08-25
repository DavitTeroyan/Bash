#!/bin/bash

echo "Input text"

while true; do

	read input
	
	if [[ "$input" == "exit" ]]; then
		break;
	fi
done	
