#!/bin/bash

check_file_type(){
  file=$1
  if [[ -f $file ]]; then
    echo "Regular file"
    return 0
  elif [[ -d $file ]]; then
    echo "Directory"
    return 1
  else
    echo "Not found"
    return 2
  fi
}

check_file_type $1
