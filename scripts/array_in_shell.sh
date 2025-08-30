#!/bin/bash

num = 1 
until [ $num -gt 5 ]
do 
echo "value : $num"
num = $((num+1))
done 