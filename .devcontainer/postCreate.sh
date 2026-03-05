#!/bin/bash
set -e

echo "🚀 Setting up development environment..."

# Update package lists
apt-get update

# Install additional development tools if needed
# apt-get install -y <package-name>

# Install Python dependencies if requirements.txt exists
if [ -f "requirements.txt" ]; then
    echo "📦 Installing Python dependencies..."
    pip3 install -r requirements.txt
fi

# Initialize git configuration (optional)
git config --global --add safe.directory /workspaces/skills-code-with-codespaces

echo "✅ Development environment setup complete!"