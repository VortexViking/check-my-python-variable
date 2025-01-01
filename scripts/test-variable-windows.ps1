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