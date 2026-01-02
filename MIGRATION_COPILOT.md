## Migration to GitHub Copilot

Product Kit has been updated to work with **GitHub Copilot** following the **speckit methodology**.

## What Changed

### 1. Directory Structure
- **Before**: `.claude/commands/` directory
- **After**: `.github/agents/` directory (following speckit format)
- All agent files now use `.agent.md` suffix

### 2. Command Syntax
- **Consistent**: `/productkit.clarify`, `/productkit.brd`, `/productkit.prd`, `/productkit.epic`
- Uses `/` prefix (slash commands) like speckit
- Works with GitHub Copilot Chat, Claude, and other AI assistants

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
- "Claude commands" → "AI agents"
- "slash commands" use `/` prefix (speckit standard)
- `.md` → `.agent.md` for agent files
- Directory follows speckit: `.github/agents/`

## Files Updated

### Core Documentation
- ✅ `README.md` - Updated references, directory structure, workflow examples
- ✅ `ARCHITECTURE.md` - Updated all diagrams and explanations
- ✅ `QUICKSTART.md` - Updated commands and prerequisites

### Agent Files (Speckit Format)
- ✅ `.github/agents/README.md` - Agent documentation
- ✅ `.github/agents/productkit.brd.agent.md` - BRD creation agent
- ✅ `.github/agents/productkit.prd.agent.md` - PRD creation agent
- ✅ `.github/agents/productkit.epic.agent.md` - Epic planning agent
- ✅ `.github/agents/productkit.clarify.agent.md` - Requirements clarification agent

### Context References
- ✅ `.specify/memory/README.md` - Updated AI agent references
- ✅ `.specify/templates/README.md` - Updated AI agent references

## How to Use

### With AI Chat (GitHub Copilot, Claude, etc.)

Use slash commands with `/productkit.*` prefix:

```bash
/productkit.clarify "Users want better reporting"
/productkit.brd
/productkit.prd
/productkit.epic
```

The AI will:
1. Read the agent file from `.github/agents/`
2. Load all referenced context files
3. Follow the agent's outline and validation steps
4. Generate the document using templates
5. Suggest handoffs to related agents

### Instruction Reference

| Instruction | Purpose | When to Use |
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
- [ ] Verify `.github/copilot/` directory exists
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
- [Instruction Reference](.github/copilot/README.md) - Detailed documentation
