#!/bin/bash
# Linting script for .NET projects

# Ensure script execution with proper permissions
set -e

echo "Running code style checks..."

# Check if dotnet-format is installed
if ! dotnet tool list -g | grep -q "dotnet-format"; then
    echo "Installing dotnet-format..."
    dotnet tool install -g dotnet-format
fi

# Run dotnet format
echo "Running dotnet format..."
dotnet format --verbosity diagnostic

# Run code analysis
echo "Running code analysis..."
dotnet build /p:TreatWarningsAsErrors=true /warnaserror

echo "Code style check completed."
