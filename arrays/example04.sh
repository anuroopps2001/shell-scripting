#!/bin/bash

nums=()

# collect integers from user
while true; do
  read -p "Enter any integer (or type 'done' to finish): " num
  if [[ "$num" == "done" ]]; then
    break
  elif ! [[ "$num" =~ ^-?[0-9]+$ ]]; then
    echo "Invalid value..!! Please enter an integer or 'done'."
    continue
  else
    nums+=("$num")
  fi
done

# if user entered nothing, exit
if (( ${#nums[@]} == 0 )); then
  echo "No numbers provided. Exiting."
  exit 1
fi

# function: calculate sum of arguments and print it
find_sum() {
  local total=0
  for n in "$@"; do
    (( total += n ))
  done
  echo "$total"    # return via stdout
}

# function: calculate average given sum and count
find_avg() {
  local sum_val=$1
  local count=$2
  # integer division
  if (( count == 0 )); then
    echo "0"
  else
    echo $(( sum_val / count ))
  fi
}

# call functions and capture their outputs
sum=$(find_sum "${nums[@]}")
avg=$(find_avg "$sum" "${#nums[@]}")

echo "Sum: $sum"
echo "Average: $avg"

