#!/bin/bash
#
set -e
usage(){
  echo "⚠️  Usage: $0 <source_file> <destination_directory>"
  exit 2
}

if [[ $# -ne 2 ]]; then
  usage
fi

src=$1
dest_dir=$2
dest_file=$dest_dir/$(basename $src)

if [[ ! -f $src ]]; then
  echo "$src File not found"
  exit 1
fi

if [[ ! -d $dest_dir ]]; then
  echo "Directory is missing"
  if mkdir -p $dest_dir; then
    echo "Directory created"
  else
    echo "unable to create dir"
    exit 1
  fi
fi

if cp $src $dest_file; then
  echo "copy successful"
else
  echo "Failed to copy file"
  exit 1
fi



