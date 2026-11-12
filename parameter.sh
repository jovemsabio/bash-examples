#!/bin/bash

# Terminal colors
RED='\033[31m'
GREEN='\033[32m'
YELLOW='\033[33m'
RESET='\033[0m'
CYAN='\e[0;36m'
WHITEB='\e[1;37m'
# ----------------

# A function called print.
# It uses the color codes above to print text in color.
# The default color is bold white
function print {
  color=${2:-WHITEB} # default value if $2 is not defined
  echo -ne "${!color}$1${RESET}";
}

string="AAA:BBBB CCCC:DDD";
print 'string -> '
print "\"${string}\"\n" YELLOW
print 'string length -> ' GREEN
print '${#string} = ' GREEN
print "${#string}\n\n"


print 'string -> '
print "\"${string}\"\n" YELLOW
print '${string#*:} = ' GREEN
print "${string#*:}\n" CYAN
print '${string##*:} = ' GREEN
print "${string##*:}\n" CYAN
print "----------\n" RED

print 'string -> '
print "\"${string}\"\n" YELLOW
print '${string%:*} = ' GREEN
print "${string%:*}\n" CYAN
print '${string%%:*} = ' GREEN
print "${string%%:*}\n" CYAN
print "----------\n" RED


print 'string -> '
print "\"${string}\"\n" YELLOW
print '${string/A/-} = ' GREEN
print "${string/A/-}\n" CYAN
print '${string//A/-} = ' GREEN
print "${string//A/-}\n" CYAN
print "----------\n" RED

string="AAA:BBBB CCCC:DDD";
print 'string -> '
print "\"${string}\"\n" YELLOW
print '${string/#A/-} = ' GREEN
print "${string/#A/-}\n" CYAN
print '${string/%D/-} = ' GREEN
print "${string/%D/-}\n" CYAN
print "----------\n" RED

