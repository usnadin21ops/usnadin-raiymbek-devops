#!/bin/bash
echo "=============================="
echo "Student Information"
echo "=============================="
echo "Name: Raiymbek"
echo "Surname: Usnadin"
echo "Group: IT2-2310"
echo "Student ID: 38318"
echo "=============================="
echo "System Information"
echo "=============================="
echo "Username: $(whoami)"
echo "Hostname: $(hostname)"
echo "Current Date: $(date)"
echo "Operating System: $(uname -o 2>/dev/null || uname -s)"
echo "Disk Usage:"
df -h / | awk 'NR==2 {print $5}'
echo "Memory Usage:"
free -h 2>/dev/null | awk 'NR==2 {print $3 "/" $2}' || echo "N/A"
echo "=============================="

INFO_FILE="Usnadin_Raiymbek_info.txt"

if [ -f "$INFO_FILE" ]; then
    echo "Student information file exists."
else
    echo "Student information file does not exist."
fi
