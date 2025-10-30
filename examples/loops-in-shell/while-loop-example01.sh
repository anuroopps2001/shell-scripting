#!/bin/bash
#
<< comments
we will be testing how while loop works in this below example
comments

num=0

while [[ $num -le 5 ]]; do
  echo $num
  num=$((num+1))         # ✅ Correct arithmetic syntax
done

