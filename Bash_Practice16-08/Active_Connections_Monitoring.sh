#!/bin/bash

echo "Active network connections:"

connections=$(lsof -i -n -P | grep ESTABLISHED)

echo "$connections"

count=$(echo "$connections" | wc -l)

echo "Total connections: $count"

