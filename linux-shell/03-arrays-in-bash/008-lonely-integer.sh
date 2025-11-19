read n
read arr

res=0

for el in ${arr[@]}; do
    (( res ^= el ))
done

echo "$res"
