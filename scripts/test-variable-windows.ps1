
# ===== HOW TO USE AND EDIT THIS SCRIPT =====#+
##+
# Purpose:#+
# This PowerShell script is used to run and check the execution of declare-variable.py on Windows systems.#+
##+
# How to use:#+
# 1. Open PowerShell#+
# 2. Navigate to the directory containing this script#+
# 3. Run the script:#+
#    .\test-variable-windows.ps1#+
# 4. Ensure that declare-variable.py is in the same directory as this script#+
##+
# How to edit:#+
# 1. Open the script in a text editor of your choice (e.g., PowerShell ISE, Visual Studio Code)#+
# 2. Modify existing commands or add new ones as needed#+
# 3. Save your changes and exit the editor#+
##+
# Key points for editing:#+
# - Line 26: Edit if your Python script has a different name or location#+
# - Line 32: Modify if you need to use a specific Python version or add arguments#+
# - Lines 33-36: Customize error handling and messages for script execution#+
# - Lines 38-40: Customize error handling and messages for exceptions#+
# - Line 44: Adjust the success message as needed#+
# - After Line 44: Add any additional commands or checks after the Python script execution#+
#   (e.g., check for output files, perform cleanup, run additional scripts)#+
##+
# ============================================#+
# Check if the declare-variable.py script exists
if (-Not (Test-Path "declare-variable.py")) {
    Write-Host "Error: declare-variable.py script not found."
    exit 1
}

# Run the declare-variable.py script
try {
    python declare-variable.py
    if ($LASTEXITCODE -ne 0) {
        Write-Host "Error: declare-variable.py script encountered an error."
        exit 1
    }
} catch {
    Write-Host "Error: An exception occurred while running declare-variable.py."
    exit 1
}

# Print a success message
Write-Host "declare-variable.py script executed successfully."
