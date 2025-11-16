#!/bin/bash

read  -p "Enter path of directory" dir

if [[ ! -d "$dir" ]]
then
        echo "Invalid directory path"
        exit 1
fi

echo "Enter 'p' to add prefix and 's' to add suffix"
read choice

read -p "Enter your prefix or suffix" text

cd "$dir" | exit
for file in *
do
        if [[ -f "$file" ]]
        then
                if [[ "$choice" -eq "p" ]]
                then
                        mv "$file" "$text$file"
                elif [[ "$choice" -eq "s" ]]
                then
                        mv "$file" "${file%}$text"
                fi
        fi
done

