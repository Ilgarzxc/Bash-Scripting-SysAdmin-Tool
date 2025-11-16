#!/bin/bash
function systemInformation() {
  echo "=====System information====="
  echo "Date: $(date '+%F')"
  echo "System is $(uptime --pretty)"
  echo "CPU usage information:"
  mpstat | tail -n2
}
