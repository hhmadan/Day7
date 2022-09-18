for i in $(seq 1 10)
do
event=$(($(($RANDOM%900))+100))
	#echo $event
	array[i]=$event
done
echo ${array[*]}
secondSmallest=$(printf '%s\n' "${array[@]}" | sort -n | head -2 | tail -1)
echo $secondSmallest
secondGreatest=$(printf '%s\n' "${array[@]}" | sort -n | tail -2 | head -1)
echo $secondGreatest


