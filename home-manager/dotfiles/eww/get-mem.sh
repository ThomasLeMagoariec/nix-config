#!/bin/bash

# Get memory usage percentage
free | grep Mem | awk '{print int($3/$2 * 100)}'
