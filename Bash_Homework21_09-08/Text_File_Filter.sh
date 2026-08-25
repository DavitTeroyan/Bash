#!/bin/bash

> issues.txt

while read line
do
    if [[ "$line" == *"CRITICAL"* ]] || [[ "$line" == *"ERROR"* ]]; then
        echo "$line" >> issues.txt
    fi
done < system.log

echo "Filtering completed."

