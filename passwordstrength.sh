#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

print_something () {
  echo Hello $1
}

wait_enter () {
  read -p "Press enter to continue"
}

print_something SLOG
echo "Want to know if your password is easily crackable?"
wait_enter
echo "MD5 it and google the result."
#  osx: md5 -s 'string'
echo "echo -n ""string"" | md5sum"
wait_enter
echo "sample"
echo -n "password123" | md5sum
#10 md5 -s mypassword
echo "#20 ggle the result using elinks"
echo "https://md5.gromweb.com/?md5=482c811da5d5b4bc6d497ffa98491e38"
#30 count results
#40 if no results > goto 60
#55 else goto 10
#60 EOF
#md5
#OSX:
#md5 -s "string"
#=
#md5 -s string

