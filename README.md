# 📦 Product Kit

Product Kit is a framework for **Requirement-Driven Design (RDD)**. Heavily inspired by the GitHub Spec-kit methodology, it adapts "Spec-Driven Development" for Product Managers, Business Analysts, and Project Managers.

The goal of Product Kit is to **treat product requirements like code**: structured, version-controlled, and AI-executable.

## 🚀 Why Product Kit?

Traditional PRDs often live in silos (Notion, Word, Jira) and quickly become outdated. Product Kit moves the source of truth into your repository, allowing AI to:

- **Audit Logic**: Catch edge cases before they reach developers.
- **Ensure Consistency**: Cross-reference new ideas against your "Product Constitution" and "Inventory."
- **Automate Handoff**: Generate technical-ready specifications that feed directly into engineering workflows.

## 📂 Repository Structure

```
product-kit/
├── constitution.md          # The "Rules of the Game." Global principles & guardrails.
├── LICENSE                  # Repository license.
├── context/                 # External knowledge: Product Vision, Personas, Market Research, Glossary.
│   ├── glossary.md          # Terminology and definitions.
│   ├── market_research.md   # Market analysis and competitive landscape.
│   ├── personas.md          # User personas and target audience profiles.
│   └── product-vision.md    # High-level product vision and strategic goals.
├── inventory/               # The "As-Is" State: Mapping existing features and constraints.
│   ├── data-model.md        # Current data structures and relationships.
│   ├── feature-catalog.md   # Existing features and business logic.
│   ├── product-map.md       # Navigation and module hierarchy.
│   └── tech-constraints.md  # Known technical limitations and dependencies.
└── templates/               # Standardized schemas for BRDs, PRDs, and Epics.
    ├── brd_template.md      # Business Requirements Document template.
    ├── epic_template.md     # Epic specification template.
    └── prd_template.md      # Product Requirements Document template.
```

## 🛠 The Workflow

### 1. The Constitution (`constitution.md`)

Before writing requirements, define your non-negotiables.

**Example**: "Every feature must support Offline Mode" or "Success metrics must be defined for every EPIC."

**The AI's Role**: It acts as a "Linter," flagging any requirement that violates these principles.

### 2. The Inventory (`inventory/`)

For existing products, the AI needs to know what is already built.

- **Product Map**: Navigation and module hierarchy.
- **Feature Catalog**: Current business logic and "how it works today."
- **Tech Constraints**: Known limitations (e.g., "We don't support real-time payments yet").

### 3. The Discovery Loop

1. **Preparation**: Use `/context` and `/inventory` as your knowledge base. Update `glossary.md` with new terminology.
2. **Clarification**: Use an AI agent to analyze requirements against your Context and Inventory. The AI will ask questions to fill gaps.
3. **Generation**: The AI uses the `/templates` to generate structured BRDs, PRDs, or Epics.
4. **Iteration**: Refine the generated documents by cross-referencing with the constitution and existing inventory.

## 🧩 Key Components

| Component  | Purpose |
|------------|---------|
| **Context** | Tells the AI **why** we are building (Vision), **who** for (Personas), the market landscape (Research), and shared terminology (Glossary). |
| **Templates** | Ensures every PRD has the same high-quality structure (User Stories, Acceptance Criteria, Edge Cases). |
| **Inventory** | Prevents "hallucinating" features that break existing logic or technical constraints. Includes data models, feature catalog, product map, and tech constraints. |

## 🤝 Technical Handoff

Once a spec is finalized using the templates, it is ready to be consumed by developers using GitHub Spec-kit. By providing a structured Markdown PRD, you eliminate 90% of the back-and-forth during the planning phase.
