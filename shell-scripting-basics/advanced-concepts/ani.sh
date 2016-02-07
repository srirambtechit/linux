#!/bin/sh

#
# Usage: ani -n -a -s -w -d
#
#
# help_ani() To print help
#
help_ani()
{
  echo "Usage: $0 -n -a -s -w -d"
  echo "Options: These are optional argument"
  echo " -n name of animal"
  echo " -a age of animal"
  echo " -s sex of animal "
  echo " -w weight of animal"
  echo " -d demo values (if any of the above options are used "
  echo " their values are not taken)"
  exit 1
}
#
#Start main procedure
#
#
#Set default value for variable
#
isdef=0
na=Moti
age="2 Months" # may be 60 days, as U like it!
sex=Male
weight=3Kg
#
#if no argument
#
if [ $# -lt 1 ]; then
  help_ani
fi
while getopts n:a:s:w:d opt
do
  case "$opt" in
    n) na="$OPTARG";;
    a) age="$OPTARG";;
    s) sex="$OPTARG";;
    w) weight="$OPTARG";;
    d) isdef=1;;
    \?) help_ani;;
  esac
done
if [ $isdef -eq 0 ]
then
  echo "Animal Name: $na, Age: $age, Sex: $sex, Weight: $weight (user define mode)"
else
  na="Pluto Dog"
  age=3
  sex=Male
  weight=20kg
  echo "Animal Name: $na, Age: $age, Sex: $sex, Weight: $weight (demo mode)"
fi
