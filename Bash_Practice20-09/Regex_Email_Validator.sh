#!/bin/bash

while true
do
	read -p "Enter email:" email

	if [[ "$email" =~ ^[a-zA-Z0-9._]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$ ]]
	then
		echo "Valid email"
		break
	else
		echo "Invalid,try again"
	fi
done	
