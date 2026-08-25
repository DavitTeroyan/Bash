#!/bin/bash

factorial() {
    local n=$1

    if [ $n -le 1 ]; then
        echo 1
    else
        local result
        result=$(factorial $((n - 1)))
        echo $((n * result))
    fi
}

if [ $# -ne 1 ]; then
    echo "Usage: $0 <number>"
    exit 1
fi

n=$1

if ! [[ "$n" =~ ^[0-9]+$ ]]; then
    echo "Error: Please enter a non-negative integer."
    exit 1
fi

echo "Factorial of $n is: $(factorial "$n")"

