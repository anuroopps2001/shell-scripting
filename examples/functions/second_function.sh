#!/bin/bash
add_numbers(){
  echo $(( $1 + $2 ))
  return 1
}

result=$(add_numbers 10 25)
echo "Total sum is: $result"
