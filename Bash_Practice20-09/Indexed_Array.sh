#!/bin/bash


nums=(34 7 91 15 62 8 47)
min={num[0]}
max={num[0]}
even=0

for num in "${num[@]}"
do
	if [ $num -gt $ max ]; then
		max=$num
	fi

	if [ $num -lt min ]; then
		min=$max
	fi
	
	if [ $((num % 2)) -eq 0]
	then
		even=$((even + 1))
	fi
done	

echo "Max Number: $max"
echo "Min NUmber: $min"
echo "Even Count: $even"
