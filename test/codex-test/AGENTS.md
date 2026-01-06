# Repository Guidelines

## Project Structure & Module Organization
- `.codex/prompts/` contains Speckit prompt templates (`speckit.*.md`) with YAML front matter and task-specific instructions.
- `.specify/scripts/bash/` holds workflow automation scripts (feature scaffolding, prerequisite checks, plan setup).
- `.specify/templates/` provides Markdown templates used by the scripts (plan, spec, tasks, checklist).
- `.specify/memory/constitution.md` stores persistent guidance used by the workflow.
- `specs/NNN-feature-name/` is the expected output location for generated specs (e.g., `specs/001-user-auth/plan.md`).

## Build, Test, and Development Commands
This repository is documentation and workflow tooling only; there is no build or runtime target.
- `./.specify/scripts/bash/check-prerequisites.sh --help` shows available options and usage.
- `./.specify/scripts/bash/check-prerequisites.sh --json` validates the current feature branch and lists available docs.
- `./.specify/scripts/bash/create-new-feature.sh "Add user authentication" --short-name user-auth` creates a new feature spec directory and branch naming inputs.
- `./.specify/scripts/bash/setup-plan.sh` initializes a plan using the templates (run from repo root).

## Coding Style & Naming Conventions
- Markdown files use YAML front matter and clear section headings; keep prompt names in the `speckit.*.md` pattern.
- Bash scripts are `#!/usr/bin/env bash` with `set -e`, 4-space indentation, and quoted variables for safety.
- Feature branches and spec directories follow the `NNN-description` format (e.g., `004-fix-bug`).

## Testing Guidelines
- There is no automated test suite. Validate scripts by running them with `--help` or `--json` and confirming expected paths and outputs.
- For prompt edits, ensure YAML front matter remains valid and example blocks render cleanly in Markdown.

## Commit & Pull Request Guidelines
- Use Conventional Commit-style messages (`type: summary`); recent history uses `feat:` as the type prefix.
- PRs should include a short summary, link to any related issue/spec, and note which scripts or templates were updated.
- If a change affects `.specify/templates/` or `.codex/prompts/`, include a brief example or rationale in the PR description.
