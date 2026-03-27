#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Yug Wankhede
# Course: Open Source Software
# Purpose: Interactively generates a personalized open-source manifesto.

echo "========================================"
echo "    Open Source Manifesto Generator     "
echo "========================================"

# Interactive Prompts
read -p "1. Why do you believe software should be free and open? " REASON_FREE
read -p "2. How does the Python community inspire you? " PYTHON_INSPIRATION
read -p "3. What is your commitment to open-source moving forward? " COMMITMENT

# Generate output text file
OUTPUT_FILE="my_manifesto_24MEI10050.txt"

echo -e "\nGenerating your customized manifesto...\n"

cat <<EOF > "$OUTPUT_FILE"
# My Open Source Manifesto
**Author**: Yug Wankhede (24MEI10050)
**Date**: \$(date '+%Y-%m-%d')

## The Value of Free Software
I firmly believe that software should be free and open because \$REASON_FREE.

## The Python Ecosystem
The Python community has inspired my journey in many ways, specifically: \$PYTHON_INSPIRATION.

## My Commitment
Moving forward, my commitment to the open-source community is to \$COMMITMENT.

"Code is poetry, and open source is the library where everyone can read and write."
EOF

echo "Your manifesto has been successfully saved to $OUTPUT_FILE!"
echo "Here is a quick preview:"
echo "----------------------------------------"
cat "$OUTPUT_FILE"
echo "========================================"
