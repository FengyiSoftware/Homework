#!/bin/bash

user=(`cat /etc/passwd | awk -F":" '{print $1}' | tr ' '  '\n'`)
number=$( for i in `seq 1 50`;do echo -n "$i ";done; echo -e "\n"; )
NUMBER=(`echo $number | tr ' '  '\n'`)
for ((i=0; i<${#user[@]}; ++i))
do
        echo "The ${NUMBER[$i]} account is ${user[$i]}"
done
