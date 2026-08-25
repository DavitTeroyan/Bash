#!/bin/bash


while true; do
    read -p "Enter a password: " password

    if [ ${#password} -ge 8 ] && [[ $password =~ [0-9] ]]; then
        echo "Password is valid!"
        break
    else
        echo "Invalid password. It must be at least 8 characters long and contain a number."
    fi
done
