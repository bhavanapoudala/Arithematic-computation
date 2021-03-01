#!/bin/bash 


echo "Enter three inputs :: " 
read a b c
declare -A Dict
Dict[result1]=$(($a+$b*$c))
Dict[result2]=$(($a*$b+$c))
Dict[result3]=$(($c+$a/$b))
Dict[result4]=$(($a%$b+$c))


array=(${Dict[result1]} ${Dict[result2]} ${Dict[result3]} ${Dict[result4]})
echo "Stored in Array"  ${array[@]}


echo "Original Numbers in array:"
for (( i = 0; i <= 4; i++ ))
do
  echo ${array[$i]}
done



for (( i = 0; i <= 4 ; i++ ))
do
   for (( j = $i; j <= 4; j++ ))
   do
      if [ ${array[$i]} -lt ${array[$j]}  ]; then
           t=${array[$i]}
           array[$i]=${array[$j]}
           array[$j]=$t
      fi
   done
done


echo -e "\nSorted Numbers in Descending Order:"
for (( i=0; i <= 4; i++ )) 
do
  echo ${array[$i]}
done
