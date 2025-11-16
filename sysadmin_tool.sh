#!/bin/bash

set -euo pipefail

trap 'echo "This script execution stopped due to an error in $LINENO"' ERR

source /home/ilgar/Desktop/MyScripts/sysadmin_tool/modules/files.sh
source /home/ilgar/Desktop/MyScripts/sysadmin_tool/modules/network.sh
source /home/ilgar/Desktop/MyScripts/sysadmin_tool/modules/system.sh

echo "===SysAdmin Tool==="
echo "1) System Information"
echo "2) Network Check"
echo "3) Folder Backup"
read -p "Please, insert required option:" choice

case "$choice" in
  1) systemInformation ;;
  2) read -p "Insert hostname: " host; hostipCheck "$host";;
  3) read -p "Insert source folder: " src; read -p "Destination folder: " dest; backupFromTo "$src" "$dest";;
  *) echo "Incorrect choice!";;
esac
