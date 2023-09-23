#Hasan Cenk Yavru 270201021
#Cüneyd Çelik 270201007


#!/bin/bash

read -p "Enter the name of the directory: " dir_name
read -p "Enter the keyword: " keyword



found_file_dir="$(pwd)/Found"

if [ ! -d "$found_file_dir" ]; then
    mkdir -p "$found_file_dir"
fi


details_file="$(pwd)/Found/modification_details.txt"


if [ ! -d "$details_file" ]; then
    touch "$details_file"
fi




count=1
grep -rl "$keyword" $dir_name/* 2>/dev/null | while read file; do
    cp "$file" "$found_file_dir/found_$(basename "$file")"
    # Get the index of the file
    index=$(basename "$file" | sed 's/file//g')
    owner=$(stat -c '%U' "$file")

    date=$(stat -c '%y' "$file")

    # Convert the date to the desired format
    formatted_date=$(date -d "$date" +"%B %d, %Y at %H.%M.")


    # Print the file name and current time
    echo "File $count: ${index} was modified by $owner on $formatted_date" >> "$details_file"
    ((count++))
done









echo "Files were copied to the Found directory!"

cat "$details_file"


