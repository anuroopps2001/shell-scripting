#!/bin/bash
#
<< scenario
Checking service: sshd
✅ sshd is running

Checking service: crond
✅ crond is running

Checking service: firewalld
❌ firewalld is not running
scenario

services=("ssh" "crond" "firewalld")
running=0
stopped=0
for svc in "${services[@]}"; do

	echo "Checking service: " $svc

	systemctl is-active --quiet $svc
	if [[ $? -eq 0 ]]; then
		echo "$svc is running"
		running=$((running+1))
	else
		echo "$svc is stopped"
		stopped=$((stopped+1))
	fi
done

echo "Running services count: $running"
echo "Stopped services count:  $stopped"
