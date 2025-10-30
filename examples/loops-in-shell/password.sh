#!/bin/bash
#
<< scenario 
Enter your password: hello
❌ Password too short (minimum 8 chars)
Enter your password: helloworld
❌ Must contain at least one uppercase letter and one digit
Enter your password: Hello123
✅ Password accepted!
scenario


while true; do

  read -p "Enter your password: " password

  if [[ ${#password} -le 8 ]]; then
    echo "❌ Password too short (minimum 8 chars)"
    continue
  fi

  if ! [[ $password =~ [A-Z] ]]; then
    echo "❌ Must contain at least one uppercase letter"
    continue
  fi

  if ! [[ $password =~ [0-9] ]]; then
    echo "❌ Must contain at least one digit"
    continue
  fi

  echo "✅ Password accepted"
  break
done
