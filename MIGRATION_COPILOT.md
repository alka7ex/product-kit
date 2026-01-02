## Migration to GitHub Copilot

Product Kit has been updated to work with **GitHub Copilot** instead of Claude AI.

## What Changed

### 1. Directory Structure
- **Before**: `.claude/commands/` directory
- **After**: `.github/agents/` directory
- All agent files moved to follow GitHub's conventions

### 2. Command Syntax
- **Consistent**: `/productkit.clarify`, `/productkit.brd`, `/productkit.prd`, `/productkit.epic`
- Uses `/` prefix (slash commands) like speckit and GitHub Copilot conventions
- Same syntax for both Claude and GitHub Copilot

### 3. File Format
**Before** (Claude handoffs):
```yaml
---
description: Create a BRD
handoffs:
  - label: Create PRD
    agent: productkit.prd
    prompt: Generate detailed specs
---
```

**After** (Copilot next_steps):
```yaml
---
title: Business Requirements Document Creator
description: Create a BRD with strategic alignment
next_steps:
  - "Generate detailed PRD: Use #productkit.prd with this BRD as context"
  - "Plan as Epic: Use #productkit.epic to break down into phases"
---
```

### 4. Terminology Updates
Throughout the documentation:
- "Claude AI" → "GitHub Copilot"
- "slash commands" remain `/command` (consistent with speckit)
- "AI agent" → "Copilot"

## Files Updated

### Core Documentation
- ✅ `README.md` - Updated references, directory structure, workflow examples
- ✅ `ARCHITECTURE.md` - Updated all diagrams and explanations
- ✅ `QUICKSTART.md` - Updated commands and prerequisites

### Agent Files
- ✅ `.github/agents/README.md` - Updated command reference
- ✅ `.github/agents/productkit.brd.md` - Updated YAML frontmatter
- ✅ `.github/agents/productkit.prd.md` - Updated YAML frontmatter
- ✅ `.github/agents/productkit.epic.md` - Updated YAML frontmatter
- ✅ `.github/agents/productkit.clarify.md` - Updated YAML frontmatter

### Context References
- ✅ `.specify/memory/README.md` - Updated AI agent references
- ✅ `.specify/templates/README.md` - Updated AI agent references

## How to Use

### With GitHub Copilot Chat
1. Open GitHub Copilot Chat in VS Code
2. Reference instructions using `/` syntax (slash commands):
   ```
   /productkit.clarify "Users want better reporting"
   ```

### With GitHub Copilot Workspace
1. Copilot automatically discovers instructions in `.github/agents/`
2. Instructions appear as suggestions when working on requirements
3. Use `/productkit.*` to explicitly invoke (slash command format)

### Agent Reference

| Agent | Purpose | When to Use |
|------------|---------|-------------|
| `/productkit.clarify` | Ask clarifying questions | Starting with vague requirements |
| `/productkit.brd` | Create Business Requirements | Need executive buy-in, ROI analysis |
| `/productkit.prd` | Create Product Requirements | Ready for engineering handoff |
| `/productkit.epic` | Create Epic planning | Multi-phase initiatives |

## Benefits of GitHub Copilot

1. **Native Integration**: Built into VS Code and GitHub
2. **Context Awareness**: Automatically understands workspace structure
3. **Team Collaboration**: Shared instructions across team
4. **Version Control**: Instructions tracked in Git like code
5. **No External Tools**: No separate AI platform needed
6. **Consistent Syntax**: Uses `/` slash commands like speckit and GitHub Copilot's built-in commands

## Migration Checklist

If you have existing Product Kit setup:

- [ ] Pull latest changes: `git pull origin main`
- [ ] Verify `.github/agents/` directory exists
- [ ] Verify `.claude/` directory is removed
- [ ] Update bookmarks/docs referencing old commands
- [ ] Test instructions with `/productkit.clarify`
- [ ] Update team documentation with new syntax

## Compatibility

The instruction format works with:
- ✅ GitHub Copilot (Chat)
- ✅ GitHub Copilot (Workspace)
- ✅ VS Code with Copilot extension
- ✅ GitHub.com with Copilot enabled

Note: While optimized for GitHub Copilot, the markdown instruction format is compatible with other AI systems that support similar workspace instructions.

## Questions?

See:
- [Quick Start Guide](QUICKSTART.md) - Getting started
- [Architecture Guide](ARCHITECTURE.md) - How it works
- [Agent Reference](.github/agents/README.md) - Detailed documentation
