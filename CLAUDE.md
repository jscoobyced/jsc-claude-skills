# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## 1. Common Development Commands

| Command | Purpose | Notes |
|---------|---------|-------|
| `bash .claude/skills/create-fe-app/scripts/handler.sh <projectName>` | Create a new React + TypeScript + Vite application using the bundled `jsc-vite-react-ts` template. | This is the low‑level form of the `create-fe-app` skill.  The skill itself can also be invoked via the slash command `/create-fe-app <projectName>`. |
| `cd <projectName> && yarn dev` | Start the development server for the newly created application. | Requires Yarn; the repository’s settings already allow `yarn start:*`. |
| `cd <projectName> && yarn build` | Build a production bundle for the application. | Use this when you need a build artefact for deployment. |
| `cd <projectName> && yarn test` | Run the test suite (if any) that the new application contains. | The default Vite + React template includes Jest or Vitest depending on the template. |
| `cd <projectName> && yarn lint` | Lint the project’s source files. | If the template includes ESLint, this will enforce style rules. |

> **Permission Note**
> The repository’s `settings.local.json` only allows commands matching `Bash(yarn build:*)` and `Bash(yarn start:*)`.  The `create-fe-app` skill’s handler script is exempt because it is part of the skill’s internal tooling and is invoked via the skill interface.

## 2. How to Use the Skill

1. **Invoke the skill**
   ```bash
   /create-fe-app <projectName>
   ```
   or directly run the handler script as shown above.

2. **Follow the on‑screen prompts**
   The handler will validate the project name, ensure Yarn is installed, and then run:
   ```bash
   yarn create jsc-vite-react-ts <projectName>
   ```

3. **After creation**
   ```bash
   cd <projectName>
   yarn dev   # Start dev server
   ```

4. **Optional: Run tests or lint**
   ```bash
   yarn test
   yarn lint
   ```

## 3. Repository Architecture (High‑Level)

- **`/`** – Repository root. Holds the CLAUDE.md (this file) and a `.claude` directory.
- **`.claude/`** – Configuration and skill definitions.
  - **`settings.local.json`** – Local permissions and hooks.
    Currently permits Yarn build and start commands.
  - **`skills/`** – Folder containing individual skill packages.
    - **`create-fe-app/`** – Skill that scaffolds a Vite‑React‑TS project.
      - **`SKILL.md`** – Skill metadata and documentation.
        Declares trigger phrases and a concise description.
      - **`scripts/handler.sh`** – Bash script executed by the skill to create the project.
      - **`evals/evals.json`** – Simple evaluation file used by the skill test harness to verify that the project is scaffolded correctly.

> The repository itself is **not** a full application; it is a collection of skills.  The primary entry point for developers is the `create-fe-app` skill, which is the only skill currently bundled.

## 4. Important Files to Know

- **`.claude/skills/create-fe-app/SKILL.md`** – Contains the skill’s name, description, trigger phrases, and usage instructions.
- **`.claude/skills/create-fe-app/scripts/handler.sh`** – Handles the creation logic; must be executable (`chmod +x`).
- **`.claude/skills/create-fe-app/evals/evals.json`** – Used by the skill test harness to ensure the scaffolded project meets minimal expectations.

## 5. Quick Reference for Future Claude Code Instances

- To **create** a front‑end app: `handler.sh <name>` or `/create-fe-app <name>`.
- To **run** the dev server or build: `yarn dev`, `yarn build` (inside the generated project).
- To **test** or **lint**: `yarn test`, `yarn lint`.
- To **read** the skill definition: `cat .claude/skills/create-fe-app/SKILL.md`.

Feel free to extend this file with additional commands or documentation as new skills are added to the repository.