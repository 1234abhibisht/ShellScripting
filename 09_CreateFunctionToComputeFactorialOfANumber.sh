#!/bin/bash

read -p "Enter a number : " n

factorial() {
	n=$1
	mul=1
	for (( i=$n; i>=1; i-- ))
	do
		mul=$((mul*i))
	done
	echo "Factorial of $n is $mul"
}

factorial $n
