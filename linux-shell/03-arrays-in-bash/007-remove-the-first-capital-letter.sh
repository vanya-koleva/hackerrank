readarray -t countries

for i in "${!countries[@]}"; do
    countries[$i]="${countries[$i]/[A-Z]/.}"
done

echo "${countries[@]}"
