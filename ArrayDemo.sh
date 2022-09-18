ctr=0
counter[((ctr++))]="100"
counter[((ctr++))]="Banana"
counter[((ctr++))]="Orange"

echo ${counter[@]}
echo ${#counter}
echo ${counter[@]/*[r]*/}
