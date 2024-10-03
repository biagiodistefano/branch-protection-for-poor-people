#!/bin/bash

# Define the hook URL and the local hooks directory
HOOK_URL="https://raw.githubusercontent.com/biagiodistefano/branch-protection-for-poor-people/main/pre-commit"
HOOKS_DIR="$(git rev-parse --show-toplevel)/.git/hooks"

# Ensure we're inside a Git repository
if [ -z "$HOOKS_DIR" ]; then
    echo "Error: You are not inside a Git repository."
    exit 1
fi

# Create the hooks directory if it doesn't exist
mkdir -p "$HOOKS_DIR"

# Download the pre-commit hook for the local repository
curl -fsSL -o "$HOOKS_DIR/pre-commit" "$HOOK_URL"

# Make the pre-commit script executable
chmod +x "$HOOKS_DIR/pre-commit"

# Output a success message
echo "Local pre-commit hook installed in this repository."
