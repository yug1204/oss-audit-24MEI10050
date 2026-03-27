#!/bin/bash
# Script 1: System Identity Report
# Author: Yug Wankhede
# Course: Open Source Software
# Purpose: Displays system info, user details, and OS license.

# --- Variables ---
STUDENT_NAME="Yug Wankhede"
SOFTWARE_CHOICE="Python"

# --- System info ---
# Fetching kernel release version
KERNEL=$(uname -r)
# Fetching the current logged-in user
USER_NAME=$(whoami)
# Fetching system uptime in a pretty format
UPTIME=$(uptime -p)
# Fetching the OS name from the os-release file
DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d '"' -f 2)
# Getting the current date
CURRENT_DATE=$(date +"%A, %B %d, %Y")

# --- Display ---
echo "========================================"
echo " The Open Source Audit "
echo "========================================"
echo "Student : $STUDENT_NAME"
echo "Software: $SOFTWARE_CHOICE"
echo "----------------------------------------"
echo "Date    : $CURRENT_DATE"
echo "OS      : $DISTRO"
echo "Kernel  : $KERNEL"
echo "User    : $USER_NAME"
echo "Uptime  : $UPTIME"
echo "License : The Linux kernel is licensed under the GPL v2."
echo "========================================"
