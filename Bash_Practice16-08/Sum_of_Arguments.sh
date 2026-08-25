#!/bin/bash

if [[ $# -eq 0 ]]; then
	echo "No Arguments"
	exit 1
fi

sum=0

for arg in "$@"; do
	sum=$((sum+arg))
done	

echo "$sum"
