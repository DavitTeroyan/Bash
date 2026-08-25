#!/bin/bash

read -p "Enter file name: " file

if [ ! -f "$file" ]; then
    echo "Error: File not found."
    exit 1
fi

read -p "Enter a word to search: " word

until grep -n "$word" "$file" > /dev/null 2>&1
do
    echo "Word not found. Try again."
    read -p "Enter another word: " word
done

echo "Word found on the following line(s):"
grep -n "$word" "$file"

