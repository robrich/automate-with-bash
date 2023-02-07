#!/bin/bash

# copy report from file share
# parse out number column (8), print sum
# print line count
# error if file not found

# thanks randomuser.me: https://randomuser.me/api/?format=csv&results=15

set -e

if [ ! -f data/report.csv ]; then
  echo "data/report.csv not found"
  exit 1
fi

cp data/report.csv .

cat ./report.csv | awk -F',' 'NR>1 {sum+=$8} END {print NR, sum}'

rm ./report.csv
