#!/bin/bash

bat1="   " 
bat2="   "
bat3="   "
bat4="   "
bat5="   "

if [[ "$1" == 1 ]]; then
    BAT=$(acpi | grep -E -o '[0-9][0-9][0-9]?\%' | sed -n '1 p')
elif [[ "$1" == 2 ]]; then
    BAT=$(acpi | grep -E -o '[0-9][0-9][0-9]?\%' | sed -n '2 p')
fi

if [[ $BAT == "100%" ]]; then
    printf "%s   %s\n" $bat1 $BAT
fi
if [[ "${BAT:0:2}" -ge 90 ]]; then
    printf "%s   %s\n" $bat1 $BAT 
elif [[ "${BAT:0:2}" -lt 90 ]] && [[ "${BAT:0:2}" -ge 60 ]]; then
    printf "%s   %s\n" $bat2 $BAT 
elif [[ "${BAT:0:2}" -lt 60 ]] && [[ "${BAT:0:2}" -ge 40 ]]; then
    printf "%s   %s\n" $bat3 $BAT 
elif [[ "${BAT:0:2}" -lt 40 ]] && [[ "${BAT:0:2}" -ge 10 ]]; then
    printf "%s   %s\n" $bat4 $BAT 
elif [[ "${BAT:0:2}" -lt 10 ]] && [[ "${BAT:0:2}" -ge 1 ]]; then
    printf "%s   %s\n" $bat5 $BAT 
else
    printf "%s   %s\n" $bat5 "0%"
fi
