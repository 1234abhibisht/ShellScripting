#!/bin/bash

read -p "Enter a number" n
sum=0
lastdigit=0

while [[ $n -gt 0 ]]
do
	lastdigit=$((n%10))
	sum=$((sum+lastdigit))
	n=$((n/10))
done

echo "Sum of all digits is $sum"

