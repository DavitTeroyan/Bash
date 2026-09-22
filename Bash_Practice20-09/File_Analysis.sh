#!/bin/bash

while IFS="," read -r name email role
do
    if [ "$role" = "user" ]
    then
        echo "$name — $email"
    fi
done < users.csv
