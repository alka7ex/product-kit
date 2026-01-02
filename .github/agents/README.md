# Product Kit Agents

AI-powered agents for creating product requirements following Product Kit methodology.

## Available Agents

### 📋 `/productkit.clarify`
**Purpose**: Ask clarifying questions before creating formal documents

**Use When**:
- User provides vague or incomplete requirements
- Need to gather evidence and metrics
- Want to validate strategic alignment
- Unsure which document type to create

**Context Files Used**: All context + inventory

**Handoffs**: → BRD, PRD, or Epic

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

**Handoffs**: → PRD, Epic

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

**Handoffs**: → Development tasks

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

**Handoffs**: → BRD or PRD for phases

---

## Workflow Patterns

### Pattern 1: Start with Clarification
```
User: "We need better analytics"
→ /productkit.clarify (gather complete requirements)
→ Agent suggests: /productkit.brd or /productkit.prd
→ User chooses based on audience
```

### Pattern 2: Business Case First
```
User: "Need executive approval for new feature"
→ /productkit.brd (strategic justification, ROI)
→ Stakeholder review and approval
→ /productkit.prd (detailed specs for engineering)
```

### Pattern 3: Large Initiative
```
User: "Planning Q2 product overhaul"
→ /productkit.epic (break into phases)
→ /productkit.brd (business case for Phase 1)
→ /productkit.prd (specs for Phase 1)
→ Repeat for Phase 2, 3...
```

### Pattern 4: Direct to Specs
```
User: "Quick feature, team aligned"
→ /productkit.prd (full specification)
→ Engineering starts immediately
```

---

## How It Works

### Context Awareness
Agents explicitly reference file locations:
```markdown
1. Load Constitution: Read `constitution.md`
2. Load Product Vision: Read `context/product-vision.md`
3. Check Constraints: Review `inventory/tech-constraints.md`
```

### Automatic Validation
Every document is checked against:
- ✅ Constitution standards (UX/UI, Design, Technical, Process)
- ✅ Strategic alignment (Product Vision pillars)
- ✅ User needs (Personas goals)
- ✅ Technical feasibility (Tech Constraints)
- ✅ Feature conflicts (Feature Catalog)

### Smart Handoffs
Agents suggest next steps:
```yaml
handoffs:
  - label: Create PRD
    agent: productkit.prd
    prompt: Generate detailed specs based on this BRD
```

---

## Constitution Requirements

All agents enforce these standards from `constitution.md`:

### UX/UI Standards
- Mobile responsive design
- Error states defined
- Empty states documented
- Loading states specified
- Accessibility requirements

### Design Standards
- Visual consistency
- Component reuse
- Design system compliance

### Technical Standards
- API contracts defined
- Error handling specified
- Security requirements
- Performance criteria

### Process Standards
- Success metrics defined
- Analytics events specified
- Rollout plan documented
- Acceptance criteria clear

---

## Getting Started

1. **First time**: Run `/productkit.clarify` with your feature idea
2. **With context**: Use `/productkit.brd` for business case or `/productkit.prd` for specs
3. **Large project**: Start with `/productkit.epic` to plan phases

See [Quick Start Guide](../../QUICKSTART.md) for detailed walkthrough.
