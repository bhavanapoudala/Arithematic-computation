#!/bin/bash 


echo "Enter three inputs :: " 
read a b c
declare -A Dict
Dict[result1]=$(($a+$b*$c))
Dict[result2]=$(($a*$b+$c))
Dict[result3]=$(($c+$a/$b))
Dict[result4]=$(($a%$b+$c))


Array=(${Dict[result1]} ${Dict[result2]} ${Dict[result3]} ${Dict[result4]})
echo "Stored in Array"  ${Array[@]}

