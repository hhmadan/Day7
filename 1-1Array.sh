for i in $(seq 1 10)
do
event=$(($(($RANDOM%900))+100))
	#echo $event
array[i]=$event
done
echo ${array[*]}

#Find 2nd Largest Number

largest=${array[0]}
secondGreatest='unset'

for((i=1; i < ${#array[@]}; i++))
do
  if [[ ${array[i]} > $largest ]]
  then
    secondGreatest=$largest
    largest=${array[i]}
  elif (( ${array[i]} != $largest )) && { [[ "$secondGreatest" = "unset" ]] || [[ ${array[i]} > $secondGreatest ]]; }
  then
    secondGreatest=${array[i]}
  fi
done

echo "Second Greatest = $secondGreatest"

#Find 2nd Smallest Number
smallest=${array[0]}

 for((i=0; i < ${#array[@]}; i++))
 do
        if [[ ${array[i]} < $smallest ]]
        then
        $smallest=${array[i]};
        fi
 done
 
   secondSmallest=${array[i]};
 
  for((i=0; i < ${#array[@]}; i++))
  do
        if [[ ${array[i]} < $secondSmallest && ${array[i]} != $smallest ]]
        then
        secondSmallest=${array[i]};
        fi
  done
 
        echo "Second Smallest Number: "$secondSmallest

################# OR THIS PROGRAM ###################

#for ((i=0;i<10;i++)); do
#   numbers+=($(((RANDOM%900)+100)))
#done
 #  echo ${numbers[*]}

#largest=0
#oldlargest=0
#smallest=1000
#oldsmallest=1000

#for n in "${numbers[@]}"; do
 #   if [[ $n -gt $largest ]]; then
  #      oldlargest=$largest
   #     largest=$n
    #elif [[ $n -gt $oldlargest && $n -lt $largest ]]; then
     #   oldlargest=$n
    #fi
    #if [[ $n -lt $smallest ]]; then
     #   oldsmallest=$smallest
      #  smallest=$n

#elif [[ $n -lt $oldsmallest && $n -gt $smallest ]]; then
 #       oldsmallest=$n
  #  fi
#done
#printf 'Second largest is: %d\nSecond smallest is: %d\n' "$oldlargest" "$oldsma>
