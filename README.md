# The Open Source Audit: Python
**Student Name:** Yug Wankhede  
**Registration Number:** 24MEI10050  
**Chosen Software:** Python  

## Project Overview
This repository contains five shell scripts developed for the OSS NGMC Capstone Project. These scripts demonstrate practical Linux command-line skills, system auditing, and automation principles aligned with open-source philosophies.

## Dependencies
To run these scripts, you will need:
* A Linux environment (Ubuntu/Debian recommended)
* `bash` shell
* Standard GNU coreutils (`awk`, `grep`, `df`, `ls`)
* Python 3 installed (`sudo apt install python3`)

## Script Descriptions & Execution
First, make all scripts executable by running: 
`chmod +x *.sh`

### Script 1: System Identity Report (`script1.sh`)
Displays a welcome screen with the OS details, kernel version, current user, uptime, and the open-source license governing the OS.
* **To run:** `./script1.sh`

### Script 2: FOSS Package Inspector (`script2.sh`)
Checks if a specified FOSS package (defaulting to Python) is installed, retrieves its version, and outputs a one-line philosophical description of the software.
* **To run:** `./script2.sh python3`

### Script 3: Disk and Permission Auditor (`script3.sh`)
Loops through critical system directories (like `/etc`, `/var/log`) and the software's config directory to report disk usage, ownership, and permissions.
* **To run:** `./script3.sh`

### Script 4: Log File Analyzer (`script4.sh`)
Reads a system log file line-by-line, counts the occurrences of a specific keyword (default: "error"), and outputs a summary.
* **To run:** `sudo ./script4.sh /var/log/syslog error`

### Script 5: Open Source Manifesto Generator (`script5.sh`)
An interactive script that asks the user three questions about their views on software freedom and generates a personalized text file manifesto.
* **To run:** `./script5.sh`
