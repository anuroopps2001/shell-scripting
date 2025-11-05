#!/bin/bash
#set -x
# Initialize an empty array
nums=()

while true; do
  read -p "Enter any number (or type 'done' to finish): " num
  if [[ $num == "done" ]]; then
    break
  elif ! [[ "$num" =~ ^-?[0-9]+$ ]]; then
    echo "Invalid input"
    continue
  else
    nums+=($num)
  fi
done

echo "Original Array elements: " ${nums[@]}
count=${#nums[@]}

for (( i=0; i<$count; i++)); do
  for (( j=0; j< $count - i -1; j++)); do
    if (( nums[j] > nums[j+1] )); then
      temp=${nums[j]}
      nums[j]=${nums[j+1]}
      nums[j+1]=$temp
    fi
  done
done
echo "Ascending order: " ${nums[@]}

for (( i=0; i<$count; i++)) do
  for (( j=0; j<$count-i-1; j++)); do
    if (( nums[j] < nums[j+1] )); then
      temp=${nums[j]}
      nums[j]=${nums[j+1]}
      nums[j+1]=$temp
    fi
  done
done

echo "Descending order: " ${nums[@]}
