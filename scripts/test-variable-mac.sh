# ===== HOW TO USE AND EDIT THIS SCRIPT =====
#
# Purpose:
# This script is used to run and check the execution of declare-variable.py on Linux systems.
#
# How to use:
# 1. Ensure the script has execute permissions:
#    chmod +x test-variable-linux.sh
# 2. Run it from the command line:
#    ./test-variable-linux.sh
# 3. Make sure declare-variable.py is in the same directory as this script
#
# How to edit:
# 1. Open the script in a text editor of your choice
# 2. Modify existing commands or add new ones as needed
# 3. Save your changes and exit the editor
#
# Key points for editing:
# - Line 25: Edit if your Python script has a different name or location
# - Line 31: Modify if you need to use a specific Python version or add arguments
# - Lines 35-38: Customize error handling and messages
# - Line 42: Adjust the success message as needed
# - After Line 42: Add any additional commands or checks after the Python script execution
#   (e.g., check for output files, perform cleanup, run additional scripts)
#
# ============================================

#!/bin/bash

# Check if the declare-variable.py script exists
if [ ! -f "declare-variable.py" ]; then
    echo "Error: declare-variable.py script not found."
    exit 1
fi

# Run the declare-variable.py script
python3 declare-variable.py

# Check the exit status of the previous command
if [ $? -ne 0 ]; then
    echo "Error: declare-variable.py script encountered an error."
    exit 1
fi

# Print a success message
echo "declare-variable.py script executed successfully."