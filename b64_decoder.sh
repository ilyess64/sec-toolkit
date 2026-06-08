#!/bin/bash
# Decodes every base64 string from a file, one per line

while read line; do
    echo "$line" | base64 -d
    echo ""
done < "$1"
