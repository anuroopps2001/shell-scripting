#!/bin/bash

# Lines containing network string
echo "=== Printing lines mathing the string with and without case senstivity ==="
grep Network system.log
grep -i warning system.log
echo "=== END ==="


# to unmatch mysql and print all other lines
echo "==== ALL LINES EXCEPT LINES CONTAINING SPECIFIC STRING ===="
grep -v mysql services.txt
echo "=== END ==="
# To print line number for matching string
echo "=== PRINTING MATCHING STRINGS WITH LINE NUMBER"
grep -n bob users.txt
echo "=== END ==="

echo "=== PRINTING LINES WHERE PORT NUMBERS STARTS WITH 8 ==="
grep ^8 ports.txt
echo "=== END ==="

grep -iE "failed|denied" auth.log

grep -ic "running" pods.txt

grep -i -A1 -B1 "error" server.log
