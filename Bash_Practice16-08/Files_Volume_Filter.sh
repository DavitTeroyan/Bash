#!/bin/bash

dir=$1

for file in "$dir"/*
do
    if [ -f "$file" ]; then
        size=$(stat --format=%s "$file")

        if (( size > 1048576 )); then
            echo "$file - $size bytes"
        fi
    fi
done

