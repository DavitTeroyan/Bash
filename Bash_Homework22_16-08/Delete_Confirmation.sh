#!/bin/bash

read -p "Enter file or directory name: " path

if [ ! -e "$path" ]; then
    echo "Error: File or directory not found."
    exit 1
fi

while true
do
    read -p "Are you sure? (yes/no): " answer

    case "$answer" in
        yes)
            rm -rf "$path"
            echo "Deleted successfully."
            break
            ;;
        no)
            echo "Deletion cancelled."
            break
            ;;
        *)
            echo "Invalid input. Please enter yes or no."
            ;;
    esac
done

