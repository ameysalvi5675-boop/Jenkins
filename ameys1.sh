#!/bin/bash

# Generate a random number between 1 and 100
random_number=$((RANDOM % 100 + 1))

# Print the random number
echo "Generated random number: $random_number"

# Check if the number is even or odd
if (( random_number % 2 == 0 )); then
    echo "Yes, it's even!"
else
    echo "No, it's odd!"
fi
