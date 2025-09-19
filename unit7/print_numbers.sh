#!/bin/bash
# Usage: ./one_to_ten.sh

a=(1 2 3 4 5 6 7)

for i in "${a[@]}"; do
  echo "$i"
done
