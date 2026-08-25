#!/bin/bash

files=("/etc/passwd" "/etc/hosts" "/etc/resolv.conf")

for file in "${files[@]}"
do
    if [ ! -e "$file" ] || [ ! -r "$file" ]; then
        echo "ALERT: $file is missing or not readable."
    else
        echo "OK: $file is readable."
    fi
done

