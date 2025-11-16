#!/bin/bash

read -p "Enter a file name : " file

read -p "Enter pattern to search : " pattern

echo "Pattern is in line : "
grep $file $pattern
