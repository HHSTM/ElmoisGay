#!/bin/bash

#Define user homedir
USER_DATA_DIR="/home"

#Define output filename
OUTPUT_FILE="user_data.tar.gz"

#Remove temporary files from user data directory
find "$USER_DATA_DIR" -type f -name "*.tmp" -delete
find "$USER_DATA_DIR" -type f -name "*.temp" -delete
find "$USER_DATA_DIR" -type f -name "*~" -delete
find "$USER_DATA_DIR" -type f -name "*.cache" -delete
find "$USER_DATA_DIR" -type f -name "*.log" -delete

# remove vim swap files
find "$USER_DATA_DIR" -type f \( -name "*.swp" -o -name "*.swo" \) -delete

#remove empty directories
find "$USER_DATA_DIR" -type d -empty -delete

tar -czf "$OUTPUT_FILE" "$USER_DATA_DIR"  
