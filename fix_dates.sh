#!/bin/bash

# Find all markdown files in the content directory
find /Users/tranviethung/Downloads/000000-Workshop/000058-SessionManager/000058-SessionManager/content -name "*.md" -type f | while read file; do
  # Replace the R date expression with a fixed date (with different spacing patterns)
  sed -i '' 's/date :  "`r Sys.Date()`"/date :  "2025-06-18"/g' "$file"
  sed -i '' 's/date : "`r Sys.Date()`"/date : "2025-06-18"/g' "$file"
done

echo "Date fields updated in all markdown files."
