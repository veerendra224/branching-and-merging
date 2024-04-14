#!/bin/bash

# Machine to check
machine="10.0.2.15"

# Function to get memory usage of a machine
get_memory_usage() {
    ssh "$1" "free -m | awk 'NR==2{print \"Memory Usage: \"\$3/(\$3+\$4)*100}'"
}

# Function to get CPU usage of a machine
get_cpu_usage() {
    ssh "$1" "top -bn1 | grep 'Cpu(s)' | sed 's/.*, *\([0-9.]*\)%* id.*/\1/' | awk '{print \"CPU Usage: \"100 - \$1\"%\"}'"
}

# Main script
echo "Memory and CPU Usage for Machine: $machine"
get_memory_usage "$machine"
get_cpu_usage "$machine"

