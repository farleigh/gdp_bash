#!/bin/bash

if [ -z $1 ]; then
  echo "Usage: ./calc_percent_increase.sh new_value old_value"
  exit
fi

# $1 = year, $2 = current value, $3 = previous value
function calcPercentIncrease {
  local percentIncrease=`awk "BEGIN {printf \"%.2f\", (${1}-${2})/${2}*100}"`
  echo "$percentIncrease"
}

calcPercentIncrease $1 $2
