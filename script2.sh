#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Yug Wankhede
# Course: Open Source Software
# Purpose: Checks if a FOSS package is installed, gets its version, and outputs a philosophy.

# Default to python3 if no argument is provided
PACKAGE=${1:-python3}

echo "========================================"
echo "        FOSS Package Inspector          "
echo "========================================"

# Check if the package is installed using dpkg or which
if dpkg -s "$PACKAGE" >/dev/null 2>&1 || which "$PACKAGE" >/dev/null 2>&1; then
    echo "Status : Installed"
    # Try to get the version. Capturing common version outputs.
    VERSION=$($PACKAGE --version 2>&1 || dpkg -s "$PACKAGE" | grep '^Version:')
    echo "Version: $VERSION"
    echo "----------------------------------------"
    echo "Philosophy: Free and open-source software like '$PACKAGE' empowers users"
    echo "            to study, change, and distribute software to benefit the global community."
else
    echo "Status : NOT Installed"
    echo "You can install it using: sudo apt install $PACKAGE"
fi
echo "========================================"
