#1. Write a shell script to print server details.
#a. Name:
#b. Memory:
#c. CPU:
#d. Disk

#!/bin/bash

#print system details:
echo "system details"
hostname -i

# Print memory usage details
echo "Memory usage:"
free -m

# Print CPU details
echo "CPU details:"
lscpu

# Print disk usage details
echo "Disk usage:"
df -h

