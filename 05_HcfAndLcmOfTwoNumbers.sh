#!/bin/bash

read -p "Enter first number : " a
read -p "Enter second number : " b

x=0
hcf=0

if [[ $a -gt $b ]]
then 
	x=$b
else
	x=$a
fi

if [[ $b -eq 0 ]]
then
	hcf=$a
	echo "HCF is $hcf"
elif [[ $a -eq 0 ]]
then
	hcf=0
	echo "HCF is 0"
fi

for (( i=$x; i>=1; i-- ))
do
	if (( a%i==0 && b%i==0 ))
	then
		hcf=$i
		echo "HCF is $hcf"
		break
	fi
done

# LCM = (a*b)/Hcf

lcm=$(( (a*b)/hcf ))
echo "LCM is $lcm"
