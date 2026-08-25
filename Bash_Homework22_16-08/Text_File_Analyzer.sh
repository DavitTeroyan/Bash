#!/bin/bash

read -p "Enter text file name: " file

if [ ! -f "$file" ]; then
    echo "Error: File not found."
    exit 1
fi

line_count=0
word_count=0
char_count=0

while read -r line
do
    ((line_count++))

    read -ra words <<< "$line"
    word_count=$((word_count + ${#words[@]}))

    char_count=$((char_count + ${#line}))
done < "$file"

echo "Total lines: $line_count"
echo "Total words: $word_count"
echo "Total characters: $char_count"

