#!/bin/bash 

for i in {1..15}
do
	touch "file_$(printf "%02d" $i).tmp"
done	
