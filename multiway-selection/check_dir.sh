#!/bin/bash

read -p "Enter directory path: " dir

# validate directory
if [[ ! -d "$dir" ]]; then
  echo "Invalid directory: $dir"
  exit 1
fi

# collect files (only immediate files), safe for names with spaces/newlines
# requires GNU find; uses -printf to print filename only
mapfile -t files < <(find "$dir" -maxdepth 1 -type f -printf '%f\n')

# counts (files and subdirectories directly under $dir)
file_count=$(find "$dir" -maxdepth 1 -type f | wc -l)
dir_count=$(find "$dir" -mindepth 1 -maxdepth 1 -type d | wc -l)

# Menu loop
while true; do
  echo
  echo "Choose an option:"
  echo "1) Show all filenames"
  echo "2) Show total file count"
  echo "3) Show total directory count"
  echo "4) Exit"

  read -p "Enter your choice: " choice
  case "$choice" in
    1)
      if (( ${#files[@]} == 0 )); then
        echo "No files found in $dir"
      else
        echo "List of files in $dir:"
        for f in "${files[@]}"; do
          echo "$f"
        done
      fi
      ;;
    2)
      echo "Total files: $file_count"
      ;;
    3)
      echo "Total subdirectories: $dir_count"
      ;;
    4)
      echo "Exiting..."
      exit 0
      ;;
    *)
      echo "Invalid option. Please choose 1-4."
      ;;
  esac
done

