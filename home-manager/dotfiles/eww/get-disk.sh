#!/bin/bash

# Get disk usage percentage for root partition
df -h / | awk 'NR==2 {print $5}' | tr -d '%'
