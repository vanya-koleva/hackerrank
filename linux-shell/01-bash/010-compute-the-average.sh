read count

sum=0

for ((i=0; i<count; i++)); do
    read num
    sum=$((sum + num))
done

result=$(echo "$sum/$count" | bc -l)
printf "%.3f\n" "$result"
