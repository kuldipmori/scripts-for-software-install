#!/bin/bash

# Get the current date and time in the desired format
datetime=$(date +'%Y-%m-%d-%H%M%S')

# Output file where the data will be stored
output_file="permission_data_$datetime.txt"

# Find all files and directories recursively and store their permission data
find . -exec bash -c '
    get_permission_data() {
        file_or_dir="$1"
        stat -c "%A %U %G %n" "$file_or_dir"
    }
    get_permission_data "$0"
' {} \; >> "$output_file"

echo "Permission data has been stored in: $output_file"
