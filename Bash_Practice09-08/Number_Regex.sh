#!/bin/bash

read -p "Enter a number: " val

if [[ $val =~ ^-?[0-9]+$ ]]; then
    echo "Valid number."
else
    echo "Invalid number."
fi

