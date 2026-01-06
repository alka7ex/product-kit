---
name: productkit
description: Use when the user asks to route a command or workflow to any Product Kit prompt under .codex/prompts.
---

# Product Kit Prompts

## Purpose
Use this skill to route commands or workflows to the relevant Product Kit prompt files in `.codex/prompts`.

## Workflow
1. Identify which Product Kit prompt applies (e.g., `productkit.user-story.md`, `productkit.clarify.md`).
2. Open the matching prompt file under `.codex/prompts/`.
3. Follow the instructions in that prompt when responding to the user.
4. If the referenced prompt is missing, tell the user the file is not present and ask whether to create it or point to an existing prompt file.

## Notes
- Keep the response aligned to the selected prompt without adding extra policy.
