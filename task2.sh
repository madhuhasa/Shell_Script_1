#!/bin/sh
df -h | awk '{ print $5 " " $1 }' | while read output;
do
  percent=$(echo $output | awk '{ print $1}' | cut -d'%' -f1  )
  partition=$(echo $output | awk '{ print $2 }' )
  if [ $percent -ge 25 ]; then
    echo "Running out of space \"$partition ($percent%)"
  fi
done



