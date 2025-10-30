#!/bin/bash
<< multi-line-comments
These lines treated as comment
Name: Anuroop
Place: Bellary
State: KA
multi-line-comments


# setting up variables
# below firstname is an variable
read firstname
echo "First name is: " firstname
# -p stands for prompt
read -p "Enter username: " username

# accessing variables using $ sign
echo "You entered $username"

# using linux commands as variabes 
echo "This is $username and current working dir is $(pwd)" 

# In the above line, pwd is linux command and accessed as variable using $(linux_command)

