# 🚀 Quick Start Guide

Get started with Product Kit in 5 minutes.

## Prerequisites

- Git repository initialized
- GitHub Copilot access (Chat or Workspace features)
- Basic understanding of product requirements

## Step 1: Customize Your Context (15 minutes)

### 1.1 Constitution
Edit [`constitution.md`](constitution.md) with your product's core principles:
```markdown
[PRODUCT_NAME] → Your product name
[PRINCIPLE_1_NAME] → User-Centricity First
[STANDARD_1_1_NAME] → Mobile Responsiveness
```

### 1.2 Product Vision
Edit [`context/product-vision.md`](context/product-vision.md):
```markdown
[EXECUTIVE_SUMMARY] → Your one-sentence vision
[STRATEGIC_PILLAR_1] → Growth & User Acquisition
[NORTH_STAR_METRIC] → Weekly Active Users
```

### 1.3 Personas
Edit [`context/personas.md`](context/personas.md):
```markdown
[PERSONA_1_NAME] → The Busy Manager
[REPRESENTATIVE_NAME] → Sarah
[GOAL_1] → "I want to generate reports quickly"
```

### 1.4 Glossary
Edit [`context/glossary.md`](context/glossary.md):
```markdown
[ENTITY_1_NAME] → Workspace
[ENTITY_1_DEFINITION] → Top-level container for data
```

## Step 2: Document Current State (30 minutes)

### 2.1 Feature Catalog
Edit [`inventory/feature-catalog.md`](inventory/feature-catalog.md):
- List existing features by module
- Document business logic
- Note dependencies

### 2.2 Tech Constraints
Edit [`inventory/tech-constraints.md`](inventory/tech-constraints.md):
- Platform limitations (mobile, browser)
- Performance limits
- Third-party dependencies

### 2.3 Data Model
Edit [`inventory/data-model.md`](inventory/data-model.md):
- Key entities
- Relationships (ERD)
- Data lifecycle policies

### 2.4 Product Map
Edit [`inventory/product-map.md`](inventory/product-map.md):
- Navigation structure
- User flows
- Module ownership

## Step 3: Create Your First Requirement (5 minutes)

### Using Copilot Instructions

**Option A: Start with Clarification**
```bash
/productkit.clarify "Users want to export reports as PDF"
```
Copilot will:
- Ask clarifying questions
- Gather complete requirements
- Validate against your context
- Suggest next steps

**Option B: Go Straight to PRD**
```bash
/productkit.prd
```
Then describe: "Create dashboard with filters and export functionality"

Copilot will:
- Load all context automatically
- Use your personas and constraints
- Generate complete PRD
- Validate against constitution

**Option C: Plan Large Initiative**
```bash
/productkit.epic
```
Then describe: "Revamp entire onboarding experience"

Copilot will:
- Check strategic alignment
- Break into phases
- Define success metrics
- Map dependencies

### Manual Approach

1. Copy template from [`templates/`](templates/)
2. Replace `[PLACEHOLDERS]` with values
3. Reference examples in `<!-- comments -->`
4. Manually validate against constitution and inventory

## Step 4: Review and Iterate

### AI Validation Checklist

The AI automatically checks:
- ✅ Constitution compliance (all standards)
- ✅ Strategic alignment (Product Vision pillars)
- ✅ User validation (Personas goals)
- ✅ Technical feasibility (Tech Constraints)
- ✅ Feature conflicts (Feature Catalog)
- ✅ Consistent terminology (Glossary)

### Common Validation Failures

**"Does not align with Strategic Pillars"**
- Solution: Review [`context/product-vision.md`](context/product-vision.md)
- Ensure feature supports at least one pillar

**"Conflicts with existing feature"**
- Solution: Review [`inventory/feature-catalog.md`](inventory/feature-catalog.md)
- Document how to resolve conflict

**"Violates tech constraint"**
- Solution: Review [`inventory/tech-constraints.md`](inventory/tech-constraints.md)
- Adjust scope or find workaround

**"Missing success metrics"**
- Solution: Constitution requires metrics
- Define baseline, target, timeframe

## Step 5: Export and Share

### For Stakeholders
```bash
/productkit.brd
```
Generates business-focused document with:
- Executive summary
- ROI calculation
- Go-to-market strategy

### For Engineers
```bash
/productkit.prd
```
Generates technical specs with:
- User stories and acceptance criteria
- API endpoints and database changes
- Error handling and edge cases

### For Planning
```bash
/productkit.epic
```
Generates initiative plan with:
- Phased approach
- Success metrics
- Resource requirements

## Example Workflows

### Workflow 1: New Feature Request
```
1. /productkit.clarify "Add social login"
2. Answer AI questions about scope and priority
3. /productkit.prd (suggested by AI)
4. Review generated PRD
5. Share with engineering team
```

### Workflow 2: Large Initiative
```
1. /productkit.epic "Rebuild analytics platform"
2. AI validates strategic alignment
3. AI generates 3-phase plan
4. /productkit.brd (for executive buy-in)
5. /productkit.prd (for Phase 1 specs)
```

### Workflow 3: Business Case First
```
1. /productkit.brd "Enterprise SSO feature"
2. Define ROI and business value
3. Get stakeholder approval
4. /productkit.prd (detailed implementation)
```

## Tips for Success

### 1. Keep Context Updated
- Update personas as you learn more about users
- Add new features to feature catalog immediately
- Document new constraints as discovered
- Refresh market research quarterly

### 2. Use Copilot Instructions Extensively
- They load ALL relevant context automatically
- They validate against everything
- They suggest logical next steps
- They save 80% of time vs manual

### 3. Leverage Examples
- Every template has detailed examples
- Examples show best practices
- Copy patterns that work

### 4. Iterate Based on Feedback
- Constitution evolves with product
- Personas get refined over time
- Constraints change with tech upgrades

### 5. Version Everything
- All files are markdown in git
- Track changes over time
- See how product thinking evolves

## Common Questions

**Q: Do I need to fill out all context files first?**
A: Start with Constitution, Product Vision, and at least one Persona. Add more as you go.

**Q: Can I skip the Agents and use templates manually?**  
A: Yes, but Agents save significant time and provide automatic validation.

**Q: What if my feature doesn't fit a template?**
A: Use `/productkit.clarify` to explore - Copilot will suggest best approach.

**Q: How do I handle requirements that conflict with the constitution?**
A: Either adjust requirements or update constitution (with team consensus).

**Q: Can I customize the templates?**
A: Yes! Templates are just markdown. Adapt to your needs.

## Next Steps

1. ✅ Customize your constitution
2. ✅ Document your product context
3. ✅ Fill out inventory (current state)
4. ✅ Try creating first requirement with AI
5. 📚 Read [`.github/agents/README.md`](.github/agents/README.md) for advanced usage
6. 🔄 Establish rhythm (update inventory weekly, review constitution quarterly)

## Getting Help

- **Command Help**: See [`.github/agents/README.md`](.github/agents/README.md)
- **Template Guide**: See [`.specify/templates/README.md`](.specify/templates/README.md)
- **Context Files**: See [`.specify/memory/README.md`](.specify/memory/README.md)
- **Main README**: See [`README.md`](README.md)

---

**Ready to create your first requirement?** Start with:
```bash
/productkit.clarify "your feature idea"
```

The Copilot will guide you from there! 🚀
