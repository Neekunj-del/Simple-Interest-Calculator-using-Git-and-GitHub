#!/bin/bash

# Simple Interest Calculation Script

# Read inputs
echo "Enter Principal Amount (P):"
read P

echo "Enter Rate of Interest (R):"
read R

echo "Enter Time in Years (T):"
read T

# Calculate Simple Interest (SI = P * R * T / 100)
# We use 'bc -l' for floating-point calculations
SI=$(echo "scale=2; ($P * $R * $T) / 100" | bc -l)

# Calculate Total Amount (A = P + SI)
A=$(echo "scale=2; $P + $SI" | bc -l)

echo "--- Results ---"
echo "Simple Interest (SI): $SI"
echo "Total Amount (A): $A"