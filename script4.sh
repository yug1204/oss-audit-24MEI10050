#!/bin/bash
# Script 4: Log File Analyzer
# Author: Yug Wankhede
# Course: Open Source Software
# Purpose: Reads a system log file and counts occurrences of a specific keyword.

# Check if at least the log file argument is passed
if [ "$#" -lt 1 ]; then
    echo "Usage: $0 <log_file_path> [keyword]"
    echo "Example: sudo $0 /var/log/syslog error"
    exit 1
fi

LOG_FILE=$1
# Default keyword is "error" if the second argument isn't provided
KEYWORD=${2:-error}

echo "========================================"
echo "           Log File Analyzer            "
echo "========================================"
echo "Log File : $LOG_FILE"
echo "Keyword  : $KEYWORD"
echo "----------------------------------------"

# Check if file exists
if [ ! -f "$LOG_FILE" ]; then
    echo "Error: File '$LOG_FILE' not found."
    exit 1
elif [ ! -r "$LOG_FILE" ]; then
    echo "Error: File '$LOG_FILE' is not readable. Try running with 'sudo'."
    exit 1
fi

# Count the occurrences of the keyword (case-insensitive)
COUNT=$(grep -i -c "$KEYWORD" "$LOG_FILE")

echo "Result: Found $COUNT occurrences of the word '$KEYWORD'."
echo "========================================"
