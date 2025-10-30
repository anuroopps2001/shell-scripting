#!/bin/bash
#
<< scenario
Enter a number (0 to stop): 5
Enter a number (0 to stop): 3
Enter a number (0 to stop): 7
Enter a number (0 to stop): 0
Total sum = 15
scenario
sum=0
while true; do
	read -p "Enter any number(0 to stop): " number
	if [[ $number -eq 0 ]]; then
		break
	fi

	if [[ $number -lt 0 ]]; then
		echo "❌ Negative numbers are not allowed!"
		continue
	fi

	sum=$((sum+number))
done

echo "Total sum: " $sum
