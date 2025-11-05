#!/bin/bash

numbers=(10 20 30 40 50)
sum=0
for i in ${numbers[@]}; do
        sum=$((sum + i))
done
echo "Sum: $sum"
echo "Ave: $(( $sum/${#numbers[@]} ))"

