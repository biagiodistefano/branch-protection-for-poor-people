#!/bin/bash

# Set up the global Git hooks template directory
TEMPLATE_DIR="$HOME/.git-templates/hooks"
HOOK_URL="https://raw.githubusercontent.com/biagiodistefano/branch-protection-for-poor-people/main/pre-commit"

# Create the hooks template directory if it doesn't exist
mkdir -p "$TEMPLATE_DIR"

# Download the pre-push hook script from your GitHub repository
curl -fsSL -o "$TEMPLATE_DIR/pre-commit" "$HOOK_URL"

# Make the pre-push script executable
chmod +x "$TEMPLATE_DIR/pre-commit"

# Set Git to use the hooks template directory system-wide
git config --global init.templateDir "$HOME/.git-templates"

# Output a success message
echo "Global pre-commit hook installed. All *future* repositories will have this hook."