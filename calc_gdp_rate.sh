#!/bin/bash
if [ -z $1 ]; then
  echo "Usage: ./calc_gdp_rate.sh file"
  exit
fi

echo "Writing output to >>> $2"
awk -F',' 'BEGIN{ print "Year,Percent Increase"} {printf("%s,",$1); system("./calc_percent_increase.sh " $2 " " $3)}' $1  > $2
