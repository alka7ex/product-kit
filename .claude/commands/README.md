# Product Kit Claude Commands

AI-powered workflows for creating product requirements following Product Kit methodology.

## Available Commands

### 📋 `/productkit.clarify`
**Purpose**: Ask clarifying questions before creating formal documents

**Use When**:
- User provides vague or incomplete requirements
- Need to gather evidence and metrics
- Want to validate strategic alignment
- Unsure which document type to create

**Outputs**: Complete requirement summary → Suggests next command

---

### 💼 `/productkit.brd`
**Purpose**: Create Business Requirements Document

**Use When**:
- Need executive buy-in
- Pitching to stakeholders
- Defining business value and ROI
- Planning go-to-market strategy

**Context Files Used**:
- `constitution.md` - Standards and principles
- `context/product-vision.md` - Strategic alignment
- `context/personas.md` - Target audience
- `context/market-research.md` - Competitive context
- `context/glossary.md` - Terminology
- `inventory/feature-catalog.md` - Existing features
- `inventory/tech-constraints.md` - Technical feasibility

**Template**: `templates/brd_template.md`

**Outputs**: Complete BRD → Suggests PRD or Epic creation

---

### 📝 `/productkit.prd`
**Purpose**: Create Product Requirements Document

**Use When**:
- Ready for engineering handoff
- Need detailed specifications
- Defining user stories and acceptance criteria
- Planning technical implementation

**Context Files Used**:
- `constitution.md` - Quality standards (UX/UI, Design, Technical, Process)
- `context/product-vision.md` - Strategic validation
- `context/personas.md` - User needs and behaviors
- `context/glossary.md` - Consistent terminology
- `inventory/feature-catalog.md` - Feature conflicts
- `inventory/tech-constraints.md` - Technical limitations
- `inventory/data-model.md` - Data requirements
- `inventory/product-map.md` - Navigation placement

**Template**: `templates/prd_template.md`

**Outputs**: Complete PRD → Ready for development

---

### 🚩 `/productkit.epic`
**Purpose**: Create Epic for multi-phase initiatives

**Use When**:
- Planning large initiatives
- Need to break work into phases
- Defining success metrics for initiative
- Coordinating multiple teams

**Context Files Used**:
- `constitution.md` - Decision frameworks (RICE)
- `context/product-vision.md` - **CRITICAL** Strategic Pillars alignment
- `context/personas.md` - Persona impact
- `context/market-research.md` - Market validation
- `context/glossary.md` - Terminology
- `inventory/feature-catalog.md` - Related features
- `inventory/tech-constraints.md` - Phasing constraints
- `inventory/data-model.md` - Schema evolution
- `inventory/product-map.md` - Product impact

**Template**: `templates/epic_template.md`

**Outputs**: Complete Epic → Suggests BRD or PRD creation for phases

---

## Workflow Patterns

### Pattern 1: Start with Clarification
```
User: "We need better analytics"
→ /productkit.clarify (gather complete requirements)
→ /productkit.epic (plan multi-phase initiative)
→ /productkit.prd (detailed specs for Phase 1)
```

### Pattern 2: Business Case First
```
User: "Add Apple Pay to checkout"
→ /productkit.brd (business case and ROI)
→ /productkit.prd (technical specifications)
```

### Pattern 3: Direct to Specs
```
User: "Create PRD for dashboard filters"
→ /productkit.prd (all context loaded automatically)
```

### Pattern 4: Large Initiative
```
User: "Revamp entire onboarding"
→ /productkit.clarify (understand scope)
→ /productkit.epic (plan phases)
→ /productkit.brd (get executive buy-in)
→ /productkit.prd (specs for each phase)
```

## Key Features

### 🤖 AI-Aware Context Loading
Every command automatically loads relevant context:
- Constitution for standards compliance
- Product Vision for strategic alignment
- Personas for user validation
- Inventory for feasibility checks

### ✅ Automatic Validation
All documents are validated against:
- Constitution compliance (standards, principles, frameworks)
- Strategic alignment (Product Vision pillars)
- User needs (Personas goals and pain points)
- Technical feasibility (Tech Constraints)
- Feature conflicts (Feature Catalog)
- Consistent terminology (Glossary)

### 🔗 Smart Handoffs
Each command suggests logical next steps:
- Clarify → BRD/PRD/Epic (based on scope)
- BRD → PRD or Epic
- Epic → PRD (for each phase)
- PRD → Ready for development

### 📁 File Organization
```
product-kit/
├── .specify/
│   ├── memory/           # Context for AI (links to actual files)
│   └── templates/        # Document templates
├── .claude/
│   └── commands/         # AI command definitions
├── constitution.md       # Core principles and standards
├── context/              # Product context
├── inventory/            # Current state
├── templates/            # Actual templates
└── [generated-docs]/     # BRDs, PRDs, Epics output here
```

## Constitution Requirements

All commands enforce these standards:

### Core Principles
- User-Centricity First
- Simplicity over Complexity
- Data-Informed decisions
- Accessibility mandatory
- Performance is a feature

### Non-Negotiable Standards
- **UX/UI**: Mobile responsive, error states, empty states
- **Design**: Professional copy, color semantics, ASCII wireframes
- **Technical**: Offline mode, security, scalability
- **Process**: Success metrics, analytics, rollout plan

### Decision Frameworks
- **RICE**: Reach × Impact × Confidence / Effort
- **Build vs Buy**: Core differentiator vs commodity

## Getting Started

1. **Start Simple**: `/productkit.clarify "feature idea"`
2. **Let AI Guide**: Follow suggested handoffs
3. **Trust the Process**: AI loads all relevant context automatically
4. **Review Output**: All placeholders filled with validated content
5. **Iterate**: Use `/productkit.clarify` anytime to refine

## Example Command Flow

```bash
# User has rough idea
/productkit.clarify "Users want to see analytics in the app"

# AI asks questions, gathers requirements
# User answers interactively

# AI suggests: "This is a large initiative. Should we plan as Epic?"
/productkit.epic

# AI generates Epic with 3 phases
# AI suggests: "Ready to create detailed PRD for Phase 1?"
/productkit.prd

# AI generates complete PRD
# Ready for engineering handoff
```

## Notes for AI Agents

When executing these commands:

1. **Always load context files first** - Don't guess, read actual files
2. **Validate against constitution** - Check all standards
3. **Cross-reference inventory** - Prevent conflicts
4. **Use templates exactly** - Follow placeholder format
5. **Suggest handoffs** - Guide user to next logical step
6. **Flag violations** - If doesn't align with Product Vision, warn user

## Files Structure Reference

See [`.specify/memory/README.md`](./.specify/memory/README.md) for memory files documentation.
See [`.specify/templates/README.md`](./.specify/templates/README.md) for template documentation.
