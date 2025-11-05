#!/bin/bash

set -e

nums=()

while true; do
  read -p "Enter any integer (or type 'done' to finish): " num
  if [[ $num == 'done' ]]; then
    break
  elif ! [[ $num =~ ^-?[0-9]+$ ]]; then
    echo "Invalid value..!!"
    continue
  else
    nums+=($num)
  fi
done

if (( ${#num[@]} == 0 )); then
  echo "No numbers provided"
  exit 1
fi

find_sum(){
  local sum=0
  for i in $@; do
    sum=$(( $i+$sum))
  done
  echo "$sum"
}

find_avg(){
  local sum=$1
  local count=$2
  if (( $count == 0 )); then 
    echo "0"
  else
    avg=$(( $sum/$count} ))
  fi
}

sum=$(find_sum ${nums[@]})
avg=$(find_avg $sum ${#nums[@]})

echo "Sum: " $sum
echo "Average: " $avg
