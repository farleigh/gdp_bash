#!/bin/bash
if [ -z $1 ]
then
  echo "Missing file name"
  exit
fi

awk -F',' 'BEGIN{ print "Year,Percent Increase"} {printf("%s,",$1); system("./calc_percent_increase.sh " $2 " " $3)}' $1  > output.csv
