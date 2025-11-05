#!/bin/bash
#
create_dir(){
	mkdir demo
}

if ! create_dir; then
	echo "error handled"
	exit 1
fi

echo "Error is not handled yet..!!"
