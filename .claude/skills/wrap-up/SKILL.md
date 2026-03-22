---
name: wrap-up
description: Stage edited files, run ESLint, commit if lint passes, and optionally push. Use when user says "wrap up", "finish up", "commit my changes", "lint and commit", "stage and commit", "I'm done", "finalize changes", "save my work", or "prepare for push".
user_invocable: true
---

# Wrap-Up

Follow these steps in order:

1. **Stage edited files**: Run `git add` on all files you have edited during this session. Do NOT stage unrelated files. Use `git status` first to identify what changed.

2. **Run ESLint**: Run `cd src/Clientside && yarn lint-stage` to lint the staged files.

3. **Commit only if lint succeeds**:
   - If the lint command exits with code 0, create a commit with a descriptive message summarizing the changes.
   - If the lint command fails, show the errors to the user and do NOT commit. Offer to fix the lint issues.

4. **Rebase with master before pushing**: If the user confirms push, run `git fetch origin master && git rebase origin/master` first.
   - If the rebase succeeds, push the code.
   - **IMPORTANT**: If there are ANY conflicts during the rebase, immediately run `git rebase --abort` and stop. Inform the user about the conflicts and do NOT push.

5. **Ask about pushing**: After a successful commit, ask the user if they also want to push the code to the remote. Only proceed if the user confirms.
