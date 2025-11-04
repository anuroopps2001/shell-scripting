#!/bin/bash

check_file(){
  if [[ -f "$1" ]]; then
    echo "File $1 exists"
    return 0
  else
    echo "File $1 doesn't exists"
    return 1
  fi
}

check_file "/etc/passwd"

if [[ $? -eq 0 ]]; then 
  echo "Funciton succeeded"
else
  echo "Function failed"
fi
