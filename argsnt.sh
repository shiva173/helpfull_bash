#!/bin/bash

echo "the argcnt.sh have $# arguments"

index=1

for arg in "$@"
do 
  echo "arg$index = $arg" 
  let "index+=1"
done
