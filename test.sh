#!/bin/bash

options=("Julia" "Anaconda" "NodeJS & GatsbyJs")

menu() {
    echo "Select options:"
    for i in ${!options[@]}; do 
        printf "[%s] %3d) %s\n" "${choices[i]:- }" $((i+1)) "${options[i]}"
    done
    if [[ "$msg" ]]; then echo "$msg"; fi
}

prompt="Check or uncheck an option (press <Enter> when done): "
while menu && read -rp "$prompt" num && [[ "$num" ]]; do
    [[ "$num" != *[![:digit:]]* ]] &&
    (( num > 0 && num <= ${#options[@]} )) ||
    { msg="Invalid option: $num"; continue; }
    ((num--)); msg="${options[num]} has been ${choices[num]:+un}checked."
    [[ "${choices[num]}" ]] && choices[num]="" || choices[num]="+"
done

printf "You selected"; msg=" nothing"
for i in ${!options[@]}; do 
    [[ "${choices[i]}" ]] && { printf " %s" "${options[i]}"; msg=""; }
done
echo "$msg"
