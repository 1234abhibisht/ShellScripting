#!/bin/bash

read -p "Enter how many terms you want : " n

a=1
b=1

echo -n "$a"  # -n will not create a new line, it will print output in same line
echo -n "$b"


for (( i=1; i<=n-2; i++ ))
do
        sum=$((a+b))
        echo -n "$sum"
        a=$b
        b=$sum
done
