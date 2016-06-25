#!/bin/bash

if [ "$#" -lt 1 ]; then
  echo "Usage $0 ipaddress"
  exit 1
fi

while read -r line; do 
    dig $line @$1 | grep "Query time\|$line" >> log.log; echo "" >> log.log;
done < cz_sk.list
