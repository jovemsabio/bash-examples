#!/usr/bin/env bash
set -Eeuo pipefail

# Terminal colors
readonly RED=$'\033[31m'
readonly GREEN=$'\033[32m'
readonly YELLOW=$'\033[33m'
readonly CYAN=$'\033[36m'
readonly WHITEB=$'\033[1;37m'
readonly RESET=$'\033[0m'

print() {
  local text="${1:-}"
  local color_name="${2:-WHITEB}"
  local color

  case "$color_name" in
    RED)    color="$RED" ;;
    GREEN)  color="$GREEN" ;;
    YELLOW) color="$YELLOW" ;;
    CYAN)   color="$CYAN" ;;
    WHITEB) color="$WHITEB" ;;
    *)      color="$WHITEB" ;;
  esac

  printf '%b' "${color}${text}${RESET}"
}

demo_string_manipulation() {
  local string='AAA:BBBB CCCC:DDD'

  print 'string -> '
  print "\"${string}\\n\"" YELLOW

  print 'string length -> ' GREEN
  print '${#string} = ' GREEN
  print "${#string}\n\n"

  print 'string -> '
  print "\"${string}\\n\"" YELLOW
  print '${string#*:} = ' GREEN
  print "${string#*:}\n" CYAN
  print '${string##*:} = ' GREEN
  print "${string##*:}\n" CYAN
  print "----------\n" RED

  print 'string -> '
  print "\"${string}\\n\"" YELLOW
  print '${string%:*} = ' GREEN
  print "${string%:*}\n" CYAN
  print '${string%%:*} = ' GREEN
  print "${string%%:*}\n" CYAN
  print "----------\n" RED

  print 'string -> '
  print "\"${string}\\n\"" YELLOW
  print '${string/A/-} = ' GREEN
  print "${string/A/-}\n" CYAN
  print '${string//A/-} = ' GREEN
  print "${string//A/-}\n" CYAN
  print "----------\n" RED

  print 'string -> '
  print "\"${string}\\n\"" YELLOW
  print '${string/#A/-} = ' GREEN
  print "${string/#A/-}\n" CYAN
  print '${string/%D/-} = ' GREEN
  print "${string/%D/-}\n" CYAN
  print "----------\n" RED
}

demo_string_manipulation
