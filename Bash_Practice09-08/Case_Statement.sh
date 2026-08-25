#!/bin/bash


action=$1

case "$action" in
    start)
        echo "Starting..."
        ;;
    stop)
        echo "Stopping..."
        ;;
    *)
        echo "Unknown action. Use 'start' or 'stop'."
        ;;
esac
