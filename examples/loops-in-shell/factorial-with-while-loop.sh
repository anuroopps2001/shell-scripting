#!/bin/bash
#
<< scenario
Enter a number: 5
Factorial of 5 is 120
scenario

read -p "Enter any number (other than 0): " number
fact=1
count=$number
while [[ $count -gt 0 ]]; do
	fact=$((count*fact))
	count=$((count-1))
done

echo "The factorial of $number is $fact"

