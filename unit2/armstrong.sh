#!/bin/bash 
#armstrong.sh
# Usage: ./amstrong.sh 153

if [ $# -ne 1 ]; then 
  echo "Usage: $0 <non-negative-inteager>"
  exit 1 
fi 

n="$1"
if ! [[ $n =~ ^[0-9]+$ ]]; then 
 echo "Input must be a non-negative inteager."
 exit 1 
fi 

# count digits 
 temp="$n"; digits=0
while [ "$temp" -gt 0  ]; do 
 temp=$(( temp / 10 ))
 ((digits++))
done 
#handle zero 
[ $digits -eq 0 ] && digits=1 

sum=0 
temp="$n"
while [ "$temp" -gt 0 ]; do 
 d=$(( temp % 10 ))
 # compute d^digits 
 pow=1 
 for ((i=0;i<digits;i++)); do pow=$(( pow *d )); done 
 sum=$(( sum + pow ))
 temp=$(( temp % 10 ))
done 

if [ "$sum" -eq "$n" ]; then 
 echo "$n is an armstrong number ."
else 
 echo "$n is NOT an armstrong number (sum=$sum)."
fi 
