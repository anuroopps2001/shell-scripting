#!/bin/bash

check_number(){
  num=$1
  if [[ $num -gt 0 ]]; then
    echo "Positive"
    return 0
  elif [[ $num -lt 0 ]]; then
    echo "Negative"
    return 2
  else
    echo "Zero"
    return 1
  fi
}

check_number $1
