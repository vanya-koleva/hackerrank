readarray -t countries

for el in "${countries[@]}"; do
    [[ $el =~ [aA] ]] || echo "$el"
done