#!/bin/bash
#
<< scenario 
Enter a number: 7
7 x 1 = 7
7 x 2 = 14
7 x 3 = 21
7 x 4 = 28
7 x 5 = 35
7 x 6 = 42
7 x 7 = 49
7 x 8 = 56
7 x 9 = 63
7 x 10 = 70
scenario

read -p "Enter any number: " number
initial_number=$number
for (( num=1; num<=10; num++ )); do
	product=$((num*$initial_number))
	echo "$number * $num = " $product
done
