#!/bin/bash

read -p "Enter file name : " file

if [[ ! -e  "$file" ]]
then
        echo "File does not exist"
        exit 1
fi

if [[ -r "$file" ]]
then
        echo "File has read permission"
else
        echo "File do not has read permission"
fi

if [[ -w "$file" ]]
then
        echo "File has write permission"
else 
        echo "File do not has read permission"
fi

if [[ -x "$file" ]]
then
        echo "File has execute permission"
else 
        echo "File do not has execute permission"
fi
