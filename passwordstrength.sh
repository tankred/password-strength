#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

# set -e immediately halts the script when unhandled error appears.
# set -u affects variables. When set, a reference to any variable you haven't previously defined - with the exceptions of $* and $@ - is an error, and causes the program to immediately exit. 

# set -o pipefail
# This setting prevents errors in a pipeline from being masked.

# The IFS variable - which stands for Internal Field Separator - controls what Bash calls word splitting.

print_something () {
  echo Hello $1
}

wait_enter () {
  read -p "Press enter to continue"
}

print_something SLOG
echo "Want to know if your password is easily crackable?"
wait_enter
echo "MD5 it and google the result. osx: md5 -s 'string'"
wait_enter
#10 md5 -s mypassword
#20 ggle the result using elinks
#30 count results
#40 if no results > goto 60
#55 else goto 10
#60 EOF
#md5
#OSX:
#md5 -s "string"
#=
#md5 -s string

