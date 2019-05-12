#!/bin/bash
#
# Location : /root
#  This script is used to produce a list
#   of avaiale minicom configs.
#
#         chris.scutt@gmail.com   
#         02/17/2019


# //// Define colors \\\\
RED="\e[31m"
BLUE="\e[34m"
GREEN="\e[32m"
GRAY="\e[37m"
BOLD="\e[1m"
DIM="\e[2m"
RESET="\e[0m"

OUTPUT="/tmp/com-menu.txt"

exec &> ${OUTPUT}

printf "\n"
printf "\t $BOLD$BLUE Available \n"
printf "\t------------$RESET\n"

for o in  `ls /etc/minicom | awk -F "." '{print $2}'`; do
        printf "\t$GREEN%s$RESET\n" "${o}"
    done
    
    printf "\n"
    
    printf "$GRAY Example: minicom cisco $RESET\n"
    printf "\n"
    
    
    exec &> /dev/tty
