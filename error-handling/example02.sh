#!/bin/bash
#
read -p "Enter any file: " file_path

if [[ -f $file ]] && echo "File $file_path already exists" || echo "FIle not fo
found and creating now" && touch $file_path

if [[ $? -eq 0 ]] && echo "File created successfully" || echo "Failed to create file"
