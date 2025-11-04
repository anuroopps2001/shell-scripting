#!/bin/bash
#
<< comments
$ ./multi_check.sh /etc /etc/passwd /no/such/file
Directory: /etc
Function returned: 1
Regular file: /etc/passwd
Function returned: 0
Not found: /no/such/file
Function returned: 2
comments


multi_check(){
  files=("$@")


  for file in "${files[@]}"; do
    if [[ -f $file ]]; then
      echo "Regular file"
    elif [[ -d $file ]]; then
      echo "Directory"
    else
      echo "File or Directory doesn't exists"
      notfound=1
    fi
  done

  return $notfound
}

paths=("/etc" "/etc/passwd" "/no/such/file/dir")
multi_check "${paths[@]}"
echo "Function returned: $?"
