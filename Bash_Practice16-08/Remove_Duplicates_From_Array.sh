#!/bin/bash

read -a input

declare -A seen
result=()

for el in "${input[@]}"
do
	if [[ -z "${seen[$el]}" ]]; then
	seen[$el]=1
	result+=("$el")
	fi
done

echo "${result[*]}"
		
