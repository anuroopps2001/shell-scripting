#!/bin/bash
nums=()
while true; do
	read -p "Enter a number (or type 'done to finish): " num
  if [[ $num == "done" ]]; then
    break
  elif ! [[ $num =~ ^-?[0-9]+$ ]]; then
    echo "Invalid number"
     continue
  else
    nums+=($num)

  fi
done

echo "Array elements: " ${nums[@]}

even_numbers=()
odd_numbers=()
for n in ${nums[@]}; do
  if (( $n % 2 == 0 )); then
    even_numbers+=($n)      
  else
    odd_numbers+=($n)
  fi
done

echo "Even numbers: " ${even_numbers[@]}
echo "Odd numbers: " ${odd_numbers[@]}

