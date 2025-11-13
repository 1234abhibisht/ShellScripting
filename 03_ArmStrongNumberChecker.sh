#!/bin/bash

read -p "Enter a number : " n

# count digits in n
length=${#n}

a=$n

sum=0
lastdigit=0
while [[ $n -gt 0 ]]
do
	lastdigit=$((n%10))
	sum=$((sum+$((lastdigit**length))))
	n=$((n/10))
done
# now n has become 0

if [[ $sum -eq $a ]]
then
	echo "$a is armstrong number"
else
	echo "$a is not armstrong number"
fi

