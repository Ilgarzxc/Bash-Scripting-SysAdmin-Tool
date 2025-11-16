#!/bin/bash
function hostipCheck(){
  echo "Checking host / ip address availability"
  ping -c1 "$1" > /dev/null
  if [ $? -eq 0 ]; then
    echo ""$1" is available"
  else
    echo ""$1" is not available"
  fi
}
