# Find length of two strings, concatenate two strings and compare two strings

#!/bin/bash

read -p "Enter first string" str1
read -p "Enter second string" str2

len1=${#str1}
len2=${#len2}

echo "Length of first string is $len1"
echo "Length of second string is $len2"

conc="$str1$str2"

echo "Concatenated string is $conc"

if [[ "$str1" == "$str2" ]]
then
        echo "Strings are equal"
else 
        echo "Strings are not equal"
fi
