#!/bin/bash

args_usage(){
  echo "⚠️  Usage: ./archive_logs.sh <source_dir> <destination_dir>"
  exit 1
}

if [[ $# -ne 2 ]]; then
  args_usage
fi

src=$1
dest=$2

if [[ ! -d $src ]]; then
  echo " source dir $srd not found..!!"
  exit 1
fi

if [[ ! -d $dest ]]; then
  if mkdir -p $dest; then
    echo "$dest created"
  else
    echo "Failed to created $dest dir"
    exit 1
  fi
fi


# shopt stands for shell operations
shopt -s nullglob
log_files=($src/*.log)
shopt -u nullglob

if [[ ${#log_files[@]} -eq 0 ]]; then
  echo "No log files found..!! Nothing to archive"
  exit 1
fi

archive_name=app-logs-$(date "+%F").tar.gz
archive_path=$dest/$archive_name

file_basenames=()
for i in ${log_files[@]}; do
  file_basenames+=($(basename $f))
done
 
if tar cvfz $archive_path -C $src ${file_basenames[@]}; then
  echo "Logs archived at $archive_path"
  exit 0
else
  echo "Failed to create archive file"
  exit 1
fi

