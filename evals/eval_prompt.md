Execute exactly these tasks:

1. If there is any pending git changes, revert the uncommit changes and use the `/clear` slash command to clear your context
2. Read the `evals/evals.json` file and extract the `description` from the first `evals`
3. Execute the task described by that `description` field
4. Apply the evaluation criteria and check them for the project created in the mentioned folder
5. Calculate the success score for this round: 1 point if the outcome is `true` and 0 point if `false`
6. Create or update `eval_result.md` with the list of success and failed criteria, in a table format
7. Stage and commit **ONLY** the `eval_result.md` file
8. If the score is 7, then you're done and you can stop
9. If the score is 6 or less:
   1. Reset the repository to last commit
   2. Modify the `.claude/skills/create-fe-app/SKILL.md` slightly to address the failed criterias
   3. Start again at step 1
