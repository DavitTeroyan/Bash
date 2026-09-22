#!/bin/bash


while true
do
	echo "1. Show date"
    	echo "2. Show number of processes"
    	echo "3. Exit"

	read -p "Choose:" choice

	case $choice in
		1)
			date
			;;
		2)
			ps aux | wc -l
			;;
		3)
			break
			;;
		*)
			echo "Invalid choice"
			;;

	esac
done	
		
