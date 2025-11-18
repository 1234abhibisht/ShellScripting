#!/bin/bash

read -p "Enter your string : " str

reverse=$(echo "$str" | rev)

if [[ "$str" == "$reverse" ]]
then
	echo "String is pallindrome"
else
	echo "String is not pallindrome"
fi

