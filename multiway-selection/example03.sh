#!/bin/bash

marks=()

for ((i=0; i<5; i++)); do
	read -p "Enter $(($i+1)) subject marks: " sub_marks
	marks+=($sub_marks)
done

sum(){
  local sum=0
  for mark in $@; do 
    sum=$(($sum+$mark))
  done
  echo $sum
}
avg(){
  local sum=$1
  local count=$2
  if (( $count == 0 )); then
    echo "0"
  else
    echo $(($sum/$count))
  fi
}

Total=$(sum ${marks[@]})
Avg=$(avg $Total ${#marks[@]})

echo "Sum: $Total"
echo "Average: $Avg"

case $Avg in
  9[0-9]|100) echo "A";;
  8[0-9]) echo "B";;
  7[0-9]) echo "C";;
  6[0-9]) echo "D";;
  *) echo "Failed";;
esac
  
    	  
    
