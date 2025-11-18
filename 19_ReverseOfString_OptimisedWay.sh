#!/bin/bash

echo "Enter string : "
read str

reverse=$(echo "$str" | rev)

echo "Reverse string is $reverse"

