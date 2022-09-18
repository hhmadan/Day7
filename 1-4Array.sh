#found=0
arr=(0 -1  2 -3 1);
n=${#arr[@]}/${#arr[0]}

for ((i = 0; i < $n - 2; i++)) 
do
        for ((j = $i + 1; j < $n - 1; j++)) 
	 do
            for ((k = $j + 1; k < $n; k++))
	   do
                ans=$((${arr[i]}+${arr[j]}+${arr[k]}))
		if [[ $ans==0 ]]
                 then
                    #echo $ans
		    echo ${arr[i]} ${arr[j]} ${arr[k]}
			else
				echo "NOT EXIST" 
#                   found=1;
                fi
            done
        done
done

#if [[ found==0 ]]
#then
 #       echo "not exist "
#fi
