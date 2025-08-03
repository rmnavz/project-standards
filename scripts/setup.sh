#!/bin/bash
# Setup script for .NET projects

# Ensure script execution with proper permissions
set -e

echo "Setting up .NET project environment..."

# Check if .NET SDK is installed
if ! command -v dotnet &> /dev/null; then
    echo ".NET SDK not found. Please install it from https://dotnet.microsoft.com/download"
    exit 1
fi

# Display .NET version
echo "Using .NET SDK version:"
dotnet --version

# Create directory structure if it doesn't exist
mkdir -p src/Application
mkdir -p src/Domain
mkdir -p src/Infrastructure
mkdir -p tests/UnitTests
mkdir -p tests/IntegrationTests
mkdir -p docs

# Initialize solution
dotnet new sln -n YourSolution

# Create projects
dotnet new classlib -o src/Domain
dotnet new classlib -o src/Application
dotnet new classlib -o src/Infrastructure
dotnet new webapi -o src/WebApi
dotnet new xunit -o tests/UnitTests
dotnet new xunit -o tests/IntegrationTests

# Add projects to solution
dotnet sln add src/Domain/Domain.csproj
dotnet sln add src/Application/Application.csproj
dotnet sln add src/Infrastructure/Infrastructure.csproj
dotnet sln add src/WebApi/WebApi.csproj
dotnet sln add tests/UnitTests/UnitTests.csproj
dotnet sln add tests/IntegrationTests/IntegrationTests.csproj

# Add project references
dotnet add src/Application/Application.csproj reference src/Domain/Domain.csproj
dotnet add src/Infrastructure/Infrastructure.csproj reference src/Application/Application.csproj
dotnet add src/WebApi/WebApi.csproj reference src/Infrastructure/Infrastructure.csproj
dotnet add src/WebApi/WebApi.csproj reference src/Application/Application.csproj
dotnet add tests/UnitTests/UnitTests.csproj reference src/Domain/Domain.csproj
dotnet add tests/UnitTests/UnitTests.csproj reference src/Application/Application.csproj
dotnet add tests/IntegrationTests/IntegrationTests.csproj reference src/WebApi/WebApi.csproj

# Restore packages
dotnet restore

echo "Project setup complete!"
echo "Run 'dotnet build' to build the solution."
