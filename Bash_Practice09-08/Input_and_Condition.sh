#!/bin/bash

read -p "Input Username: " username

if [ "$username" == "admin" ] || [ "$username" == "superuser" ]; then
	echo "VVelcome, Administrator!"
else
	echo "Hello, $username!"
fi	

