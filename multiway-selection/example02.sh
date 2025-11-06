#!/bin/bash
read -p "Enter first value: " first
read -p "Enter second value: " second
add_choice=$(($first+1))
sub_choice=$(($second+1))
read -p "Type $add_choice for addition and $sub_choice for subtraction: " value
case $value in 
	$add_choice) echo "Addtion of $first and $second is: " $(($first+$second));;
	$sub_choice) echo "Difference of $first and $second is: " $(($first-$second));;
	*) echo "Enter proper value..!!"
esac
	
