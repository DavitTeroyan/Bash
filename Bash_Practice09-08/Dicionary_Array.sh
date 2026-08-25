#!/bin/bash

declare -A countries

countries["Armenia"]="Yerevan"
countries["France"]="Paris"
countries["Germany"]="Berlin"
countries["Italy"]="Rome"
countries["Japan"]="Tokyo"

read -p "Enter country: " country

if [[ -n "${countries[$country]}" ]]; then
    echo "Capital: ${countries[$country]}"
else
    echo "Error: Country not found."
fi

