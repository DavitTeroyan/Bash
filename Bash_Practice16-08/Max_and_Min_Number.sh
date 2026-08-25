#!/bin/bash

arr=(14 54 2 6 63 99)
max=${arr[0]}
min=${arr[0]}

for el in "${arr[@]}"
do
	if (( el > max )); then
		max=$el
	fi
	if (( el < min )); then	
		min=$el
	fi
done

echo "Max is $max"
echo "Min is $min"

	
