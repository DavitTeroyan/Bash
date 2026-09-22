#!/bin/bash

declare -A capitals

capitals=(
    [Armenia]="Yerevan"
    [France]="Paris"
    [Germany]="Berlin"
    [Italy]="Rome"
    [Japan]="Tokyo"
)

read -p "Enter country: " country

if [[ -v capitals[$country] ]]
then
    echo "Capital: ${capitals[$country]}"
else
    echo "County dosn't find"
fi
