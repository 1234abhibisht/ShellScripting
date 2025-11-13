#!/bin/bash

read -p "Enter a number : " n

# now reverse the number
r=0
lastdigit=0
a=$n
while [[ $n -gt 0 ]]
do
	lastdigit=$((n%10))
	r=$((r*10))
	r=$((r+lastdigit))
	n=$((n/10))
done

if [[ $r == $a ]]
then
	echo "$a is pallindrome number"
else 
	echo "$a is not pallindrome number"
fi

