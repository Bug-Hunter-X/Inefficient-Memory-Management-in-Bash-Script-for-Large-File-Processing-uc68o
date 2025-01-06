#!/bin/bash

# This script processes a large file efficiently using line-by-line reading.
# It avoids loading the entire file into memory at once, preventing memory exhaustion.

file="/path/to/your/largefile.txt"

line_count=0

# Efficient: Reads the file line by line.
while IFS= read -r line; do
  line_count=$((line_count + 1))
done < "$file"

# Print the result
echo "Number of lines: $line_count"