#!/bin/bash

ips=("192.168.1.1" "10.0.0.1" "192.168.0.5" "172.16.0.1" "192.168.1.10")

count=0

for ip in "${ips[@]}"; do
	if [[ "$ip" == 192.168* ]]; then
		((count++))
	fi
done

echo "Number of IP addresses starting with 192.168: $count"

