#!/bin/bash

read -p "Enter a number : " n

x=0

for (( i=2; i<n; i++ ))
do
	if (( n%i==0 ))
		then
			x=1
			break
	fi
done

if [[ $n -eq 1 ]]
then 
	echo "$n is neither prime nor composit"
elif [[ $x -eq 0 ]]
then
	echo "$n is prime number"
else 
	echo "$n is composite number"
fi


