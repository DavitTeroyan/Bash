#!/bin/bash

read file

if [[ ! -f "$file" ]]; then
	echo "file not found"
	exit 1
fi

last_modified=$(stat --format=%Y "$file")
current_time=$(date +%s)

seven_days=$((7 * 24 * 60 * 60))

if (( current_time - last_modified > seven_days )); then
	echo "file is old"
else 
	echo "file is new"
fi	

