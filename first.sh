#! /bin/bash
printf "Memory \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t CPU_LOAD \n"
MEMEORY=$(free -m)
CPU=$(top -bn1 | grep load | awk '{printf "%.2f%%\t\t\n", $(NF-2)}')
echo "$MEMEORY$CPU"


