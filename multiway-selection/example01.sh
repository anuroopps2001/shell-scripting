#!/bin/bash
#
echo "Enter value for a: "
read a
echo "Enter value for b: "
read b
echo "Please select the action: 1-Addition and 2-Subtraction:  "
read action

case $action in
  1) echo "Addition of $a and $b is: " $(($a+$b));;
  2) echo "DIfference of $a and $b is: " $(($a-$b));;
  *) echo "Please select only between 1 and 2";;
esac

