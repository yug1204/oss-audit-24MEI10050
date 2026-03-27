#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Yug Wankhede
# Course: Open Source Software
# Purpose: Audits critical directories and the python config for disk usage and permissions.

echo "========================================"
echo "      Disk and Permission Auditor       "
echo "========================================"

# List of directories to audit
DIRECTORIES=("/etc" "/var/log" "/usr/lib/python3")

for DIR in "${DIRECTORIES[@]}"; do
    if [ -d "$DIR" ]; then
        echo "Directory  : $DIR"
        
        # Disk Usage (human readable, suppressing errors)
        USAGE=$(sudo du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "Disk Usage : $USAGE"
        
        # Permissions and Ownership of the directory itself
        PERMS=$(stat -c "%A" "$DIR")
        OWNER=$(stat -c "%U:%G" "$DIR")
        echo "Permissions: $PERMS"
        echo "Owner:Group: $OWNER"
        echo "----------------------------------------"
    else
        echo "Directory  : $DIR (Does not exist on this system)"
        echo "----------------------------------------"
    fi
done
echo "Audit Complete."
echo "========================================"
