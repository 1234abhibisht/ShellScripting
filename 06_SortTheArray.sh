#!/bin/bash

echo "Enter an array"
read -a arr

echo "Enter 'a' for ascending sort or 'd' for descending sort"
read input

if [[ $input == 'a' ]]
then 
	sorted=($(printf "%s\n" "${arr[@]}" | sort -n))
	echo "previous array : ${arr[@]}"
	echo "sorted array : ${sorted[@]}"
elif [[ $input == 'd' ]]
then
	sorted=($(printf "%s\n" "${arr[@]}" | sort -nr))
	echo "previous array : ${arr[@]}"
	echo "sorted array : ${sorted[@]}"
fi

