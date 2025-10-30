#!/bin/bash
#
read -p "Stduent, Please enter your marks(1-100): " marks

if [[ $marks -lt 0 || $marks -gt 100 ]]; then
	echo "Invalid number..!!!"
elif [[ $marks -ge 80 ]]; then
	echo "Distinction..!!"
elif [[ $marks -ge 60 && $marks -le 79 ]]; then
	echo "First class.!!"
elif [[ $marks -ge 35 && $marks -le 59 ]]; then
	echo "Second class.!!"
else
	echo "Failed..!!"
fi

