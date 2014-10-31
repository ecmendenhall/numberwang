#!/bin/sh
# The "shebang" on the first line of a bash script
# indicates which interpreter should be used to run
# this file. We're writing bash, but you could use
# /usr/bin/ruby just as well. A trick: try using
# /usr/bin/env <interpreter> for portability.

# You've probably already figured this one out, but
# bash includes comment lines like these!

# Bare commands will be run in sequence, just like
# entering them on the command line:
# echo "Some spooky emoji:"
# echo "🎃 "
# echo "👻 "

# Put two commands on the same line with ";":
# echo "Same line!"; echo "🎃 "; echo "👻 "

# Store stuff in variables:
SPOOKY_SCARY_GHOST="👻 "

# and access them with the "$" prefix:
# echo "From a variable: $SPOOKY_SCARY_GHOST"

# There are special global variables, too. Access
# command line arguments with $1, $2, $3, etc.:
# echo "First arg: $1"
# echo "First: $1 Second: $2"

# $0 is the name of the script:
# echo "This script is: $0"

# $$ is the current process:
# echo "This script's pid is: $$"

# Quotes are kind of like ruby, where single quotes
# are stricter than double quotes:
# echo "Boo! $SPOOKY_SCARY_GHOST"
# echo 'Boo! $SPOOKY_SCARY_GHOST'

# Bash functions are basically subroutines:

function print_a_pumpkin {
  echo "🎃 "
}

# print_a_pumpkin

# This syntax works, too:
print_a_pumpkin() {
  echo "🎃 "
}

# They also take positional arguments:
say_something_scary() {
  echo "$SPOOKY_SCARY_GHOST says: $1"
}

# say_something_scary "boo!"

# Tests:
if [[ 1 < 2 ]]
  then print_a_pumpkin
  else say_something_scary "boo!"
fi

# Loops:
for emoji in "🎃 " "👻 " "💀 "
do
  echo "Look at this spooky $emoji!"
done

pumpkins_printed="0"
while [[ pumpkins_printed -lt 10 ]]
do
  echo "🎃  $pumpkins_printed"
  let "pumpkins_printed += 1"
done

# Exit status:
# Exit 0 for success
# exit 0

# Exit non-zero for failure
# exit 1

# Functions have return codes, which are like
# exit statuses:

is_it_a_pumpkin() {
  [[ "$1" = "🎃 " ]]
}

always_a_pumpkin() {
  return 0
}

if `is_it_a_pumpkin "pumpkin"`
then echo "It's a pumpkin!"
else echo "It's not a pumpkin."
fi
