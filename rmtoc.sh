#!/usr/bin/env bash

FILE=${1:?No file was specified as first argument}

# Find the line number where "## Table of Contents" starts
TOC_START=$(grep -n "^## Table of Contents$" "$FILE" | head -1 | cut -d: -f1)

if [ -z "$TOC_START" ]; then
    echo "No Table of Contents found in $FILE"
    exit 0
fi

# Find the next heading (starting with #) after the TOC
# This marks the end of the TOC section
TOC_END=$(tail -n +$((TOC_START + 1)) "$FILE" | grep -n "^#" | head -1 | cut -d: -f1)

if [ -z "$TOC_END" ]; then
    echo "Could not find end of Table of Contents"
    exit 1
fi

# Calculate the actual line number in the file
TOC_END=$((TOC_START + TOC_END - 2))

# Remove lines from TOC_START to TOC_END (inclusive)
sed -i "${TOC_START},${TOC_END}d" "$FILE"

echo "Table of Contents removed from $FILE"