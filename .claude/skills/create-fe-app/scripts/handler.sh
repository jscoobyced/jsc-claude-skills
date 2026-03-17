#!/usr/bin/env bash

# Skill to create a new client-side React application using yarn create jsc-vite-react-ts

set -e

# Check if project name was provided
if [ -z "$1" ]; then
  echo "Error: Please provide a project name"
  exit 1
fi

PROJECT_NAME="$1"

# Check if yarn is available
if ! command -v yarn &> /dev/null; then
  echo "Error: yarn could not be found. Please install yarn first."
  exit 1
fi

echo "Creating new React application '$PROJECT_NAME' with TypeScript and Vite..."

# Create the project using yarn create
yarn create jsc-vite-react-ts "$PROJECT_NAME"

echo "Project '$PROJECT_NAME' created successfully!"
echo "To start the development server, run:"
echo "  cd $PROJECT_NAME"
echo "  yarn dev"
