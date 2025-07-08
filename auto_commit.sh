#!/bin/bash

# Get today's date
DATE=$(date +%Y-%m-%d)
LOG_DIR="./log"

# Make sure log directory exists
mkdir -p $LOG_DIR

# Create a new log file for today if it doesn't exist
echo "Daily log for $DATE" >> "$LOG_DIR/$DATE.md"

# Git commit and push
git add .
git commit -m "Daily commit for $DATE"
git push
