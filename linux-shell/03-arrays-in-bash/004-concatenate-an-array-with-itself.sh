readarray -t arr

new_arr=( "${arr[@]}" "${arr[@]}" "${arr[@]}" )

echo "${new_arr[@]}"
