# Product Kit Architecture

Visual guide to how Product Kit works with AI agents.

## System Overview

```
┌─────────────────────────────────────────────────────────────────┐
│                        USER INTERACTION                         │
│                                                                 │
│  User: "We need to add Apple Pay to checkout"                  │
│         ↓                                                       │
│  GitHub Copilot: /productkit.clarify                            │
└─────────────────────────────────────────────────────────────────┘
                              ↓
┌─────────────────────────────────────────────────────────────────┐
│                 COPILOT LOADS CONTEXT FILES                     │
│                                                                 │
│  ┌────────────────┐  ┌──────────────────┐  ┌────────────────┐ │
│  │ constitution.md│  │ product-vision.md│  │  personas.md   │ │
│  │                │  │                  │  │                │ │
│  │ • Standards    │  │ • Strategic      │  │ • User goals   │ │
│  │ • Principles   │  │   Pillars        │  │ • Pain points  │ │
│  │ • Frameworks   │  │ • North Star     │  │ • Behaviors    │ │
│  └────────────────┘  └──────────────────┘  └────────────────┘ │
│                                                                 │
│  ┌────────────────┐  ┌──────────────────┐  ┌────────────────┐ │
│  │feature-catalog │  │tech-constraints  │  │  glossary.md   │ │
│  │                │  │                  │  │                │ │
│  │ • Existing     │  │ • Platform       │  │ • Terminology  │ │
│  │   features     │  │   limits         │  │ • Definitions  │ │
│  │ • Dependencies │  │ • Performance    │  │ • Standards    │ │
│  └────────────────┘  └──────────────────┘  └────────────────┘ │
└─────────────────────────────────────────────────────────────────┘
                              ↓
┌─────────────────────────────────────────────────────────────────┐
│                COPILOT ANALYZES & VALIDATES                     │
│                                                                 │
│  ✓ Strategic Alignment: Supports "Payment Modernization"       │
│  ✓ User Need: "Busy Manager" wants fast checkout               │
│  ✓ Technical Feasibility: Stripe supports Apple Pay            │
│  ✓ No Conflicts: New feature, no catalog conflicts             │
│  ✓ Metrics Required: Per constitution Process Standards        │
│                                                                 │
│  ⚠ Questions Needed:                                            │
│    - What's the current drop-off rate?                         │
│    - Include Google Pay too?                                   │
│    - Timeline and priority?                                    │
└─────────────────────────────────────────────────────────────────┘
                              ↓
┌─────────────────────────────────────────────────────────────────┐
│               COPILOT ASKS CLARIFYING QUESTIONS                 │
│                                                                 │
│  Copilot: "What metrics support adding Apple Pay?"             │
│  User: "40% checkout drop-off, users request it daily"         │
│                                                                 │
│  Copilot: "Should we include Google Pay for Android users?"    │
│  User: "Yes, both Apple Pay and Google Pay"                    │
│                                                                 │
│  Copilot: "What's the success target?"                         │
│  User: "Reduce drop-off to 30%, 20% adoption rate"            │
└─────────────────────────────────────────────────────────────────┘
                              ↓
┌─────────────────────────────────────────────────────────────────┐
│                 COPILOT SUGGESTS NEXT STEP                      │
│                                                                 │
│  "I have complete requirements. This is a medium-sized         │
│   feature. I recommend:"                                        │
│                                                                 │
│   Option A: /productkit.brd (Business case for executives)      │
│   Option B: /productkit.prd (Technical specs for engineers)     │
│                                                                 │
│  User: /productkit.prd                                          │
└─────────────────────────────────────────────────────────────────┘
                              ↓
┌─────────────────────────────────────────────────────────────────┐
│                 COPILOT GENERATES DOCUMENT                      │
│                                                                 │
│  1. Loads template: templates/prd_template.md                  │
│  2. Replaces placeholders with validated content:              │
│                                                                 │
│     [FEATURE_NAME] → Digital Wallet Payment Integration        │
│     [PROBLEM_DESCRIPTION] → 40% drop-off, users want...        │
│     [PRIMARY_PERSONA] → The Busy Manager                       │
│     [FUNCTIONAL_REQUIREMENT_1] → Must detect device type...    │
│     [METRIC_1] → Checkout conversion: 2.5% → 3.0%             │
│                                                                 │
│  3. Adds constitution-required sections:                       │
│     - Success Metrics (required by Process Standards)          │
│     - Analytics Events (required by Process Standards)         │
│     - Error States (required by UX/UI Standards)               │
│     - Accessibility (required by Core Principles)              │
│     - Rollout Plan (required by Process Standards)             │
└─────────────────────────────────────────────────────────────────┘
                              ↓
┌─────────────────────────────────────────────────────────────────┐
│                  COPILOT VALIDATES OUTPUT                        │
│                                                                 │
│  Constitution Compliance Check:                                │
│  ✓ Mobile responsive (UX/UI Standard)                          │
│  ✓ Error states defined (UX/UI Standard)                       │
│  ✓ Empty states documented (UX/UI Standard)                    │
│  ✓ Security requirements (Technical Standard)                  │
│  ✓ Success metrics included (Process Standard)                 │
│  ✓ Analytics events specified (Process Standard)               │
│  ✓ Rollout plan documented (Process Standard)                  │
│                                                                 │
│  Cross-Reference Validation:                                   │
│  ✓ No conflicts with feature-catalog.md                        │
│  ✓ Respects tech-constraints.md                                │
│  ✓ Aligns with product-vision.md Strategic Pillars             │
│  ✓ Solves persona pain points from personas.md                 │
│  ✓ Uses correct terms from glossary.md                         │
└─────────────────────────────────────────────────────────────────┘
                              ↓
┌─────────────────────────────────────────────────────────────────┐
│                    COMPLETE PRD OUTPUT                          │
│                                                                 │
│  📝 Product Requirements Document                               │
│  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━      │
│                                                                 │
│  Feature: Digital Wallet Payment Integration                   │
│  Priority: P0 | Target: Q1 2026                                │
│                                                                 │
│  Problem: 40% checkout drop-off, users want digital wallets    │
│  Solution: Integrate Apple Pay + Google Pay                    │
│  Personas: Busy Manager (primary), Power User (secondary)      │
│                                                                 │
│  User Stories:                                                 │
│  - US-01: Select payment method (P0)                           │
│  - US-02: Handle payment errors (P0)                           │
│  - US-03: View transaction history (P1)                        │
│                                                                 │
│  Success Metrics:                                              │
│  - Conversion: 2.5% → 3.0% (3 months)                         │
│  - Digital wallet usage: 0% → 20% (6 months)                  │
│                                                                 │
│  [... complete specification with all sections ...]            │
│                                                                 │
│  ✓ Ready for Engineering Handoff                              │
└─────────────────────────────────────────────────────────────────┘
```

## File Flow Diagram

```
┌──────────────────────────────────────────────────────────────┐
│                    PRODUCT KIT FILES                          │
└──────────────────────────────────────────────────────────────┘
                             │
            ┌────────────────┼────────────────┐
            ↓                ↓                ↓
    ┌──────────────┐ ┌──────────────┐ ┌──────────────┐
    │ Constitution │ │   Context    │ │  Inventory   │
    │              │ │              │ │              │
    │ • Principles │ │ • Vision     │ │ • Features   │
    │ • Standards  │ │ • Personas   │ │ • Constraints│
    │ • Frameworks │ │ • Market     │ │ • Data Model │
    │              │ │ • Glossary   │ │ • Product Map│
    └──────────────┘ └──────────────┘ └──────────────┘
            │                │                │
            └────────────────┼────────────────┘
                             ↓
                    ┌─────────────────┐
                    │ Copilot Instrs │
                    │                 │
                    │ • clarify       │
                    │ • brd           │
                    │ • prd           │
                    │ • epic          │
                    └─────────────────┘
                             ↓
                    ┌─────────────────┐
                    │   Templates     │
                    │                 │
                    │ • BRD Template  │
                    │ • PRD Template  │
                    │ • Epic Template │
                    └─────────────────┘
                             ↓
                    ┌─────────────────┐
                    │  Generated      │
                    │  Documents      │
                    │                 │
                    │ • Complete BRDs │
                    │ • Complete PRDs │
                    │ • Complete Epics│
                    └─────────────────┘
```

## Command Execution Flow

```
User Input
    ↓
/productkit.clarify
    ↓
┌─────────────────────────────────────┐
│ Load Context                        │
│ ├─ constitution.md                  │
│ ├─ context/product-vision.md        │
│ ├─ context/personas.md              │
│ ├─ context/glossary.md              │
│ ├─ inventory/feature-catalog.md     │
│ └─ inventory/tech-constraints.md    │
└─────────────────────────────────────┘
    ↓
┌─────────────────────────────────────┐
│ Analyze Requirements                │
│ ├─ Parse user input                 │
│ ├─ Identify gaps                    │
│ ├─ Check context files              │
│ └─ Generate questions               │
└─────────────────────────────────────┘
    ↓
┌─────────────────────────────────────┐
│ Ask Questions Iteratively           │
│ ├─ Problem & User Value             │
│ ├─ Solution Approach                │
│ ├─ Success Metrics                  │
│ ├─ Strategic Alignment              │
│ ├─ Technical Feasibility            │
│ └─ Scope & Phasing                  │
└─────────────────────────────────────┘
    ↓
Gathered Requirements
    ↓
Suggest: /productkit.brd or /productkit.prd or /productkit.epic
    ↓
┌─────────────────────────────────────┐
│ Generate Document                   │
│ ├─ Load template                    │
│ ├─ Replace placeholders             │
│ ├─ Add constitution sections        │
│ └─ Validate against all context     │
└─────────────────────────────────────┘
    ↓
┌─────────────────────────────────────┐
│ Validation Checklist                │
│ ├─ Constitution compliance          │
│ ├─ Strategic alignment              │
│ ├─ Feature conflicts                │
│ ├─ Tech constraints                 │
│ └─ Terminology consistency          │
└─────────────────────────────────────┘
    ↓
Complete, Validated Document
```

## Key Benefits

### 1. AI Always Knows What's Available
```
.specify/memory/README.md lists all context files
.specify/templates/README.md lists all templates
.github/agents/*.md reference exact file paths
```

### 2. Automatic Validation
```
Every command checks:
├─ Constitution (standards)
├─ Product Vision (strategy)
├─ Personas (users)
├─ Feature Catalog (conflicts)
└─ Tech Constraints (feasibility)
```

### 3. Consistent Output
```
Templates + Placeholders + Examples = 
High-quality, validated requirements every time
```

### 4. Version Controlled
```
All files in Git:
├─ Track context evolution
├─ See requirement changes
├─ Collaborate with team
└─ Audit history
```

## Comparison: Before vs After

### Before Product Kit
```
User → Writes PRD manually
     → Forgets to check persona needs
     → Misses technical constraints
     → No metrics defined
     → Conflicts with existing features
     → Engineering rejects
     → Multiple iterations
     → 3-5 days to finalize
```

### After Product Kit
```
User → /productkit.prd "feature idea"
     → Copilot loads all context automatically
     → Copilot validates everything
     → Copilot asks for missing info
     → Copilot generates complete PRD
     → All standards enforced
     → Ready for engineering
     → 30 minutes to finalize
```

## Evolution Over Time

```
Week 1: Setup Product Kit
├─ Customize constitution
├─ Document product vision
├─ Define personas
└─ Fill inventory

Week 2: First Requirements
├─ Use /productkit.clarify
├─ Generate first PRD
├─ Share with team
└─ Iterate based on feedback

Month 1: Establish Rhythm
├─ Update feature catalog weekly
├─ Refine personas monthly
├─ Review constitution quarterly
└─ Generate 5-10 requirements

Quarter 1: Full Adoption
├─ All requirements through Product Kit
├─ Context files kept current
├─ Engineering loves the clarity
└─ 80% time savings on documentation
```

---

**The magic**: GitHub Copilot explicitly knows what files exist and what they contain, so it can automatically load context, validate requirements, and generate complete specifications that align with your product strategy. No guessing, no gaps, no conflicts.
