#!/bin/sh

while getopts c:d:m:e opt
do
 case $opt in
  c) clear;;
  d) ls -l .;;
  m) mc;;
  e) vi;;
  *) echo "invalid option"
 esac
done
