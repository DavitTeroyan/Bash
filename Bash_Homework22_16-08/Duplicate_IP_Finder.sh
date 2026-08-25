#!/bin/bash

if [ ! -f "access.log" ]; then
    echo "Error: access.log not found."
    exit 1
fi

declare -A hits

while read -r ip
do
    if [ -n "$ip" ]; then
        hits[$ip]=$((hits[$ip] + 1))
    fi
done < access.log

echo "IP request counts:"
echo "------------------"

for ip in "${!hits[@]}"
do
    echo "$ip: ${hits[$ip]} requests"
done

echo
echo "IPs with more than 3 requests:"
echo "-------------------------------"

for ip in "${!hits[@]}"
do
    if (( hits[$ip] > 3 )); then
        echo "WARNING: $ip - ${hits[$ip]} requests"
    fi
done

