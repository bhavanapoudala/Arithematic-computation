#!/bin/bash -x


echo "Enter three inputs :: " 
read a b c

result=$(($c+$a/$b))
echo $result
