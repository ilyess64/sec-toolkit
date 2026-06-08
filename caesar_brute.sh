#!/bin/bash
# Brute forces all 25 ROT shifts on a string
# Usage: ./caesar_brute.sh "your ciphertext here"

TEXT="$1"

for i in $(seq 1 25); do
    result=$(echo "$TEXT" | tr 'A-Za-z' "$(python3 -c "
import string
n=$i
upper = string.ascii_uppercase
lower = string.ascii_lowercase
print(upper[n:] + upper[:n] + lower[n:] + lower[:n])
")")
    echo "ROT$i: $result"
done
