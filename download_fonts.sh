#!/bin/bash

# Read each line in images.txt
while IFS= read -r url; do
  # Extract the filename from the URL
  filename=$(basename "$url")
  
  # Download the file
  echo "Downloading $url as $filename..."
  curl -O "$url"  # -O saves with the original filename
  
done < fonts.txt
