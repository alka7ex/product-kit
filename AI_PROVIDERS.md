# AI Provider Setup Guide

Product Kit supports multiple AI providers through a provider-agnostic architecture. The core agent definitions and prompts are shared across all providers, while provider-specific configurations are kept separate.

## Getting Started

When you run the Product Kit CLI (`prod`), you'll be asked to select your AI provider:

1. **GitHub Copilot** → Creates `.github/copilot-instructions.md`
2. **Claude (Anthropic)** → Creates `CLAUDE.md` in root
3. **Gemini (Google)** → Creates `GEMINI.md` in root

The CLI automatically:
- Detects your choice during setup
- Creates the correct instruction file for your provider
- Sets up shared `agents/` and `prompts/` directories
- Configures templates and context files

All providers share the same agent definitions, ensuring consistent workflows across platforms.

---

## Directory Structure

```
product-kit/
├── agents/                    # Shared agent definitions (all providers)
│   ├── productkit.clarify.agent.md
│   ├── productkit.brd.agent.md
│   ├── productkit.prd.agent.md
│   ├── productkit.epic.agent.md
│   ├── productkit.constitution.agent.md
│   ├── productkit.update-context.agent.md
│   └── productkit.update-inventory.agent.md
│
├── prompts/                   # Shared prompt triggers (all providers)
│   ├── productkit.clarify.prompt.md
│   ├── productkit.brd.prompt.md
│   ├── productkit.prd.prompt.md
│   ├── productkit.epic.prompt.md
│   ├── productkit.constitution.prompt.md
│   ├── productkit.update-context.prompt.md
│   └── productkit.update-inventory.prompt.md
│
├── .github/                   # GitHub Copilot (if selected)
│   └── copilot-instructions.md
│
├── CLAUDE.md                  # Claude instructions (if selected)
├── GEMINI.md                  # Gemini instructions (if selected)
│
├── context/                   # Product context
├── inventory/                 # Current state
└── templates/                 # Document templates
```

## Supported AI Providers

### GitHub Copilot

**Configuration**: `.github/copilot-instructions.md`

**Auto-created by CLI**: Yes - when you select "GitHub Copilot" during setup

**How to use**:
1. Run `prod my-product` and select GitHub Copilot
2. Open project in VS Code with GitHub Copilot installed
3. The instruction file is automatically loaded
4. Use slash commands: `/productkit.clarify`, `/productkit.brd`, `/productkit.prd`, `/productkit.epic`

**References**:
- Agent files: `agents/*.agent.md`
- Prompt files: `prompts/*.prompt.md`

---

### Claude (Anthropic)

**Configuration**: `CLAUDE.md` (in root directory)

**Auto-created by CLI**: Yes - when you select "Claude" during setup

**How to use**:
1. Run `prod my-product` and select Claude
2. Create a Claude Project in Claude.ai
3. Add the project directory as knowledge base
4. The `CLAUDE.md` file provides custom instructions
5. Reference agent files when needed

**File Location**: Root directory (not in subdirectory)

**References**:
- Agent files: `agents/*.agent.md`
- Prompt files: `prompts/*.prompt.md`

---

### Gemini (Google AI)

**Configuration**: `GEMINI.md` (in root directory)

**Auto-created by CLI**: Yes - when you select "Gemini" during setup

**How to use**:
1. Run `prod my-product` and select Gemini
2. Use Google AI Studio or Gemini API
3. The `GEMINI.md` file provides system instructions
4. Reference agent files when needed

**File Location**: Root directory (not in subdirectory)

**References**:
- Agent files: `agents/*.agent.md`  
- Prompt files: `prompts/*.prompt.md`

**Agent Integration**:
- Will reference shared `agents/*.agent.md` files
- Prompt files in `prompts/` will serve as triggers

---

## Agent Files vs Prompt Files

### Agent Files (`agents/*.agent.md`)
**Format**: ChatAgent markdown with YAML frontmatter

**Purpose**: Full agent implementation with:
- Title and description
- Handoff definitions to other agents
- Complete execution workflow
- Context file loading instructions
- Validation rules
- Output templates

**Example**:
```yaml
---
title: Requirements Clarification
description: Ask clarifying questions to refine requirements
handoffs:
  - label: Create Business Requirements
    agent: productkit.brd
    prompt: Create a BRD for this requirement
---

# Full agent implementation...
```

### Prompt Files (`prompts/*.prompt.md`)
**Format**: Minimal prompt markdown with frontmatter

**Purpose**: Lightweight triggers that reference agents
- Act as entry points for slash commands
- Link to corresponding agent files
- Provider-specific UI integration

**Example**:
```yaml
---
agent: productkit.clarify
---
```

---

## Adding Support for a New Provider

To add support for a new AI provider:

1. **Create provider directory**:
   ```bash
   mkdir .provider-name
   ```

2. **Add provider-specific instructions**:
   - Create `provider-instructions.md`
   - Reference shared `agents/` and `prompts/` directories
   - Document provider-specific slash commands or triggers

3. **Configure provider settings**:
   - Add any provider-specific configuration files
   - Map slash commands to agent files
   - Set up context loading mechanisms

4. **Test integration**:
   - Verify agents can be triggered
   - Ensure context files are loaded correctly
   - Test handoffs between agents

5. **Update this guide**:
   - Add provider section above
   - Document specific usage instructions
   - Note any provider limitations

---

## Benefits of This Architecture

✅ **Single Source of Truth**: Agent logic lives in one place  
✅ **Provider Independence**: Switch providers without rewriting agents  
✅ **Easy Maintenance**: Update agents once, works for all providers  
✅ **Consistent Experience**: Same commands and workflows across providers  
✅ **Flexible Configuration**: Provider-specific customization when needed  

---

## Migration Notes

If you're migrating from the old structure:
- Agent files moved from `.github/agents/` to `agents/`
- Prompt files moved from `.github/prompts/` to `prompts/`
- GitHub Copilot instructions remain in `.github/copilot-instructions.md`
- All references have been updated to use new paths

---

## Related Documentation

- [Quick Start](QUICKSTART.md) - Getting started with Product Kit
- [Architecture](ARCHITECTURE.md) - Framework architecture
- [Agents README](agents/README.md) - Detailed agent documentation
- [Migration Guide](MIGRATION_COPILOT.md) - GitHub Copilot setup
