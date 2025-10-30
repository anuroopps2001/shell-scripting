#!/bin/bash

<< important
arguements are extra parameters specified along with the script
sctipt_file will be 0th argument
and sub-sequent args are used as 1st, 2nd etc

arguements usage in script
$0, $1, $2 and so on..!
important

echo "Trying to create user: " $1
read -p "Enter username: " user

echo "Creating user $user"
# setting variables
first_arg=$0

second_arg=$1
echo "First arguement is " $0
echo "Second argument is " $1
