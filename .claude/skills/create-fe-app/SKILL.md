---
name: create-fe-app
metadata: {
  version: 1.0.0,
  author: Cédric Rochefolle
}
description: When the user needs to create a new client-side React application with TypeScript and Vite. This skill automates the entire process of setting up a modern React project with all necessary dependencies and configurations. Trigger words: 'create front-end app', 'create React app', 'create Vite app', 'create TypeScript React app'.
---

# The job

The `create-fe-app` skill automates the creation of modern React applications with TypeScript and Vite. It uses the skill's `scripts/handler.sh` script to execute the necessary commands for creating the React application and installing dependencies.

## Usage

To use this skill, run, ask Claude to create a new front-end application by providing the desired project name.
Where `<projectName>` is the name of the project you want to create.

## Example

User: "Claude, please create a new front-end application named 'my-react-app'."
Claude: "Sure! I will create a new React application named 'my-react-app' using my `create-fe-app` skill. Please wait while I set everything up for you."

## Requirements

- yarn package manager must be installed on the system
- Node.js must be installed (required for yarn)

## What It Does

1. Execute the `scripts/handler.sh` script with the provided project name as argument.

## Output

The project is created in the current directory with the directory name matching the provided project name.
