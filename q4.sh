#!/bin/bash
input="./q4_in.txt"
sum=0
n=0
arr=()
while IFS= read -r line
do
  numbers=$(echo $line | tr " " "\n")
  for ad in $numbers
  do
    sum=$(( $sum + ad ))
    n=$[$n+1]
    arr+=( $ad )
    # echo $ad
  done
done < "$input"


for ((i = 0; i<$n; i++)) 
do
      
    for((j = 0; j<$n-i-1; j++)) 
    do
      
        if [ ${arr[j]} -gt ${arr[$((j+1))]} ] 
        then
            # swap 
            temp=${arr[j]} 
            arr[$j]=${arr[$((j+1))]}   
            arr[$((j+1))]=$temp 
        fi
    done
done

echo $(( $sum / $n )) | bc -l
v = $(( $n % 2 ))
if [ $v -gt 0]
    
echo ${arr[3]}

