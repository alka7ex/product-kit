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
├── templates/               # Standardized schemas for BRDs, PRDs, and Epics.
├── context/                 # External knowledge: Product Vision, Personas, Market Research.
├── inventory/               # The "As-Is" State: Mapping existing features and constraints.
├── inbox/                   # Raw input: Meeting notes, transcripts, and rough ideas.
└── specs/                   # The Final Output: AI-generated, human-verified PRDs & Epics.
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

### 3. The Discovery Loop (`inbox/` → `specs/`)

1. **Ingestion**: Drop raw notes or stakeholder transcripts into `/inbox`.
2. **Clarification**: Use an AI agent to analyze the notes against your Context and Inventory. The AI will ask questions to fill gaps.
3. **Generation**: The AI uses the `/templates` to generate a structured PRD or BRD.
4. **Verification**: Move the finalized document to `/specs`.

## 🧩 Key Components

| Component  | Purpose |
|------------|---------|
| **Context** | Tells the AI **why** we are building (Vision), **who** for (Personas), and the market landscape. |
| **Templates** | Ensures every PRD has the same high-quality structure (User Stories, Acceptance Criteria, Edge Cases). |
| **Inventory** | Prevents "hallucinating" features that break existing legacy logic or technical constraints. |

## 🤝 Technical Handoff

Once a spec is finalized in `specs/`, it is ready to be consumed by developers using GitHub Spec-kit. By providing a structured Markdown PRD, you eliminate 90% of the back-and-forth during the planning phase.
