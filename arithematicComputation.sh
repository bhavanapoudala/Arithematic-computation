#!/bin/bash -x


echo "Enter three inputs :: " 
read a b c

result=$(($a%$b+$c))
echo $result
