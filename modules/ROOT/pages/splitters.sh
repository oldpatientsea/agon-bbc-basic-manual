#!/bin/bash

input_file="your_file.txt"
pattern="== \[#(\w+)\]#(\w+)#"
output_prefix="output"

# Create a temporary file to store the matching lines
temp_file=$(mktemp)

# Use grep to find the lines matching the pattern and store them in the temporary file
grep -P "$pattern" "$input_file" > "$temp_file"

# Iterate over the matching lines and split the input file using csplit
count=0
while read -r line; do
  if [[ $line =~ $pattern ]]; then
    second_word="${BASH_REMATCH[2]}"
    csplit "$input_file" "/$line/" -s -n 2 -f "$output_prefix$count"
    count=$((count + 1))
  fi
done < "$temp_file"

# Remove the temporary file
rm "$temp_file"

