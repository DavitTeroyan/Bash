#!/bin/bash

num= 

echo "Input numbers"
read num

if ((num % 2 == 0 )) ; then
	echo "Number is even"
else
	echo "Number is odd"
fi	
