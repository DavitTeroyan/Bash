#!/bin/bash

host=$1

ping -c 1 "$host" > /dev/null 2>&1

if [ $? -eq 0 ]; then
    echo "$host is reachable"
else
    echo "$host is not reachable"
fi

