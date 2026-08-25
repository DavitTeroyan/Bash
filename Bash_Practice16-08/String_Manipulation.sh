#!/bin/bash

if [[ $# -eq 0 ]]; then
	echo "No Arguments"
	exit 1
fi

arg="$*"
echo "${arg^^}"

