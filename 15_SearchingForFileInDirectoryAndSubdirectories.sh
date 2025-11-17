#!/bin/bash

read -p "Enter path of directory : " dir

if [[ ! -d "$dir" ]]
then
        echo "Invalid directory path : "
        exit 1
fi

read -p "Enter extension of your file : " ext

read -p "Enter size of your file (0 for no restriction) : " size

if [[ "$size" -gt 0 ]]  # find files by name and size
then
        find "$dir" -type f -name "*.$ext" -size +${size}c
else
        find "$dir" -type f -name "*.$ext"
fi
