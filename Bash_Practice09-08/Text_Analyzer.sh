#!/bin/bash

count=0

while read line
do
    if [[ $line == *error* ]]; then
        ((count++))
        echo "Error found: $count"

        if [ $count -eq 3 ]; then
            echo "3 errors found. Stopping..."
            break
        fi
    fi
done

