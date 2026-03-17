# jsc-claude-skills

This repository contains a collection of **Claude Code** skills that extend the capabilities of the Claude Code CLI. Each skill is a small, self‑contained package that can be invoked via slash commands or the CLI’s skill system.

## Available Skills

- **create-fe-app** – Scaffold a modern React + TypeScript + Vite front‑end project using the `jsc-vite-react-ts` template.

## Getting Started

1. **Clone the repository**:
   ```bash
   git clone <repo-url>
   cd jsc-claude-skills
   ```
2. **Run a skill** (example):
   ```bash
   /create-fe-app my-react-app
   ```
3. **Explore the source**: All skill logic lives under the `.claude/skills/` directory.

## Development Workflow

- Add new skills under `.claude/skills/` following the existing structure.
- Ensure each skill includes a `SKILL.md` describing its usage.
- Use the provided `settings.local.json` to control allowed shell commands.

## Contributing

Feel free to open PRs or issues.  When adding a new skill, remember to update the README and test its functionality locally before merging.

---

*This project is maintained by Cédric Rochefolle.*