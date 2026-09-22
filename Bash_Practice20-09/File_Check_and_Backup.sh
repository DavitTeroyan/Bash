#!/bin/bash


file=$1

if [ ! -f "$file" ]
then
	echo "Error:File does not exits"
	exit 1
fi

if [ ! -s "$file" ]
then
	echo "File is empty"
	exit 0
fi

mkdir -p backup

cp "$file" "backup/backup_$(basename "$file")"

echo "Backup created"
