#!/bin/bash
function directoryCheck (){
  if [ -d "$1" ]; then
    echo "Files in the reference directory:"
    echo "$(find "$1" -maxdepth 1 -type f -printf '%f\n')"
  else
    echo "Provide valid directory name as a position argument"
  fi
}

function backupFromTo() {
  if [ "$#" -eq 2 ] && [ -d "$1" ]; then
    mkdir -p "$2"
    cp -r "$1" "$2" 2>>/home/ilgar/Desktop/MyScripts/sysadmin_tool/logs/sysadmin.log
    echo "Backup process has been completed"
  else
    echo "Provide valid arguments"
  fi
}
