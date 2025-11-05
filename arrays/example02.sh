#!/bin/bash
#
#
# Empty array initialization
nums=()

for (( i=1; i<=5; i++)); do
  while true; do
    read -p "Enter number $i: " num
    if [[ -z $num ]]; then
      echo "Input cannot be empty..Please enter valid number"
      continue
    fi

    if ! [[ "$num" =~ ^-?[0-9]+$ ]]; then
      echo "Invalid input..Please enter an integer"
      continue
    fi
  # Appedning elements into an array
    nums+=($num)
    break
  done
done

max=${nums[0]}
min=${nums[0]}

for n in ${nums[@]}; do
  if (( n > $max )); then
    max=$n
  fi

  if (( n < $min )); then
    min=$n
  fi

done

echo "Entered Numbers are: " ${nums[@]}
echo "Largest: " $max
echo "Smallest: " $min
