#!/bin/bash


# Check if a directory argument was provided
if [ -z "$1" ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

# Set the base directory from the first argument
baseDir="$1"

# Recursively find all JSON files in the directory
find "$baseDir" -type f -name "*.json" | while read -r file; do
    # Check if the file starts with a BOM (0xEF, 0xBB, 0xBF in UTF-8)
    if head -c 3 "$file" | grep -q $'\xEF\xBB\xBF'; then
        echo "Removing BOM from: $file"
        
        # Remove the BOM and save the content back to the same file
        tail -c +4 "$file" > "$file.tmp" && mv "$file.tmp" "$file"
    else
        echo "No BOM found in: $file"
    fi
done

