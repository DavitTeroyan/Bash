#!/bin/bash

for((num=1;num<=50;num++)); do
	if (( "$num" % 15 == 0 )); then
		echo "FizzBuzz $num"
	elif (( "$num" % 5 == 0 )); then
		echo "Buzz $num"
	elif (( "$num" % 3 == 0 )); then
		echo "Fizz $num"
	fi
done	

	
