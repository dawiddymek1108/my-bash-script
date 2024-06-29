#!/bin/bash
if [ "$1" == "--date" ]; then
    date
fi
if [ "$1" == "--logs" ]; then
    num_files=100
    if [ -n "$2" ]; then
        num_files=$2
    fi
    for i in $(seq 1 $num_files); do
        filename="log${i}.txt"
        echo "Filename: $filename" > $filename
        echo "Script: skrypt.sh" >> $filename
        echo "Date: $(date)" >> $filename
    done
fi
if [ "$1" == "--help" ]; then
    echo "Available options:"
    echo "--date      Display current date"
    echo "--logs [n]  Create n log files (default 100)"
    echo "--help      Display this help message"
fi
