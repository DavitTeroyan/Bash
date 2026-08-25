#!/bin/bash

while true
do
    echo "===== MENU ====="
    echo "1. Check network"
    echo "2. View processes"
    echo "3. Exit"

    read -p "Enter choice: " choice

    case $choice in
        1)
            echo "Network is active"
            ;;
        2)
            echo "Processes are normal"
            ;;
        3)
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid input"
            ;;
    esac
done

