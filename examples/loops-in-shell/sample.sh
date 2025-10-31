#!/bin/bash
#
services=("ssh" "httpd" "firewalld")

log_file="/tmp/service_monitor.log"

echo "==== $(date '+%F %T') - Service check started ===" >> $log_file

for svc in "${services[@]}"; do
  echo "Checking service: $svc"
  echo "Checking service: $svc" >> $log_file

  systemctl is-active --quiet $svc

  if [[ $? -eq 0 ]]; then
    echo "$svc is already running"
    echo "$(date '+%F %T') - $svc is already running" >> $log_file

  else
    echo "$svc is stopped - attempting to restart it.."
    echo "$(date '+%F %T') - $svc is stopped - trying to restart it" >> $log_file
    systemctl restart $svc
    sleep 3
    systemctl is-active --quiet $svc
    if [[ $? -eq 0 ]]; then
      echo "$svc restarted successfully..!!"
      echo "$(date '+%F %T') $svc is restarted successfully" >> $log_file
    else
      echo "$svc is failed"
      echo "$(date '+%F %T') - ERROR: Failed to restart $svc" >> $log_file
    fi
  fi

  echo "" >> $log_file
  echo ""
done

echo "=== $(date '+%F %T') - Service check completed  ===" >> $log_file 
