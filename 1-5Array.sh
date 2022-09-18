for ((j=1; j<=9; j++))
do
a=$((11*$j))
arr[$j-1]=$a
done
echo ${arr[@]}

