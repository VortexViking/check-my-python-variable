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