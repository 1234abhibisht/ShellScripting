#!/bin/bash

read -p "Enter filename : " file

if [[ -e $file ]]   # -e will check whether file exists 
then
	echo "File exists"
	cat "$file"

else 
	echo "File does not exists"
	echo "Enter 'y' to create file or 'n' to exit : "
	read choice
	if [[ $choice == 'y' ]]
	then
		touch $file
		echo "File created"
	elif [[ $choice == 'n' ]]
	then
		echo "File not created"
	fi
fi


