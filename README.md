# 📦 Product Kit

Product Kit is a framework for **Requirement-Driven Design (RDD)**. Heavily inspired by the GitHub Spec-kit methodology, it adapts "Spec-Driven Development" for Product Managers, Business Analysts, and Project Managers.

The goal of Product Kit is to **treat product requirements like code**: structured, version-controlled, and AI-executable.

## ⚡ Quick Start

### Installation

Install Product Kit CLI using [UV](https://docs.astral.sh/uv/) (recommended):

```bash
# Install UV (if you don't have it)
curl -LsSf https://astral.sh/uv/install.sh | sh

# Install Product Kit
uv tool install product-kit

# Create a new project
prod my-product
```

You'll be guided through an interactive setup to configure:
- Product name and vision
- AI assistant choice (Copilot, Claude, or Gemini)
- Strategic pillars and personas
- Template preferences

### Alternative Installation Methods

**Using pipx:**
```bash
pipx install product-kit
prod my-product
```

**Using pip:**
```bash
pip install product-kit
prod my-product
```

## 🚀 Why Product Kit?

Traditional PRDs often live in silos (Notion, Word, Jira) and quickly become outdated. Product Kit moves the source of truth into your repository, allowing AI to:

- **Audit Logic**: Catch edge cases before they reach developers.
- **Ensure Consistency**: Cross-reference new ideas against your "Product Constitution" and "Inventory."
- **Automate Handoff**: Generate technical-ready specifications that feed directly into engineering workflows.
- **Validate Requirements**: Automatically check against strategic pillars, user needs, and technical constraints.

**👉 New to Product Kit? See the [Quick Start Guide](QUICKSTART.md)**  
**📐 Want to understand how it works? See the [Architecture Guide](ARCHITECTURE.md)**  
**🔄 Migrating from other AI tools? See the [Copilot Migration Guide](MIGRATION_COPILOT.md)**

## 📂 Repository Structure

```
product-kit/
├── constitution.md          # The "Rules of the Game." Global principles & guardrails.
├── LICENSE                  # Repository license.
├── .specify/                # AI-readable structure (speckit methodology)
│   ├── memory/              # References to context files for AI awareness
│   │   └── README.md        # Index of all available context files
│   └── templates/           # References to document templates
│       └── README.md        # Index of all available templates
├── .github/                 # GitHub integrations  
│   └── agents/              # AI agents (speckit format)
│       ├── README.md                           # Agent documentation and usage
│       ├── productkit.constitution.agent.md    # Create product constitution
│       ├── productkit.update-context.agent.md  # Update context files
│       ├── productkit.update-inventory.agent.md # Update inventory files
│       ├── productkit.clarify.agent.md         # Ask clarifying questions
│       ├── productkit.brd.agent.md             # Create Business Requirements Document
│       ├── productkit.prd.agent.md             # Create Product Requirements Document
│       └── productkit.epic.agent.md            # Create Epic planning document
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

### Method 1: AI-Assisted (Recommended)

Using AI agents for structured, validated requirements:

#### Step 0: First-Time Setup (If Needed)

For new projects or missing foundational files:

```bash
# Create your product constitution
/productkit.constitution
```
Defines principles, standards, and decision frameworks.

```bash
# Add context files (vision, personas, market research, glossary)
/productkit.update-context
```
Provides background knowledge for AI-assisted requirements.

```bash
# Document current state (features, constraints, data model, navigation)
/productkit.update-inventory
```
Tracks what exists so AI can validate against it.

#### Step 1: Start with Clarification
```bash
/productkit.clarify "Users want better analytics"
```
- AI loads all context (constitution, vision, personas, inventory)
- Asks intelligent questions to gather complete requirements
- Validates strategic alignment and technical feasibility
- Suggests next steps

#### Step 2: Create Appropriate Document
Based on your needs:

**For Business Stakeholders:**
```bash
/productkit.brd
```
- Creates Business Requirements Document
- Includes ROI, strategic alignment, go-to-market
- Automatically validates against constitution and product vision

**For Engineering Teams:**
```bash
/productkit.prd
```
- Creates Product Requirements Document
- Detailed specs, user stories, acceptance criteria
- Checks against feature catalog and tech constraints

**For Large Initiatives:**
```bash
/productkit.epic
```
- Creates Epic planning document
- Multi-phase breakdown with success metrics
- Validates against strategic pillars

#### Step 3: Iterate and Refine
- Copilot provides validation checklist
- Flags any conflicts or missing requirements
- Suggests next steps for related documents

#### Ongoing: Keep Context Fresh

As your product evolves:

```bash
# Update context when you have new research, personas, or strategy changes
/productkit.update-context

# Update inventory when features launch, constraints change, or data model evolves
/productkit.update-inventory
```

This ensures AI always has current information for validation.

### Method 2: Manual Process

For those who prefer working directly with templates:

### Method 2: Manual Process

For those who prefer working directly with templates:

### 1. The Constitution (`constitution.md`)

Before writing requirements, define your non-negotiables.

**Example**: "Every feature must support Offline Mode" or "Success metrics must be defined for every EPIC."

**Copilot's Role**: It acts as a "Linter," flagging any requirement that violates these principles.

### 2. The Inventory (`inventory/`)

For existing products, Copilot needs to know what is already built.

- **Product Map**: Navigation and module hierarchy.
- **Feature Catalog**: Current business logic and "how it works today."
- **Tech Constraints**: Known limitations (e.g., "We don't support real-time payments yet").

### 3. The Discovery Loop

1. **Preparation**: Use `/context` and `/inventory` as your knowledge base. Update `glossary.md` with new terminology.
2. **Clarification**: Use AI instructions (e.g., `/productkit.clarify`) to analyze requirements against your Context and Inventory. AI will ask questions to fill gaps.
3. **Generation**: Copilot uses the `/templates` to generate structured BRDs, PRDs, or Epics with automatic validation.
4. **Iteration**: Refine the generated documents by cross-referencing with the constitution and existing inventory.

---

## 🤖 AI Instructions Reference

Product Kit includes AI instructions that work with GitHub Copilot, Claude, Gemini, and other AI assistants. These instructions automatically load context and validate requirements:

### Available Instructions

#### Setup & Maintenance Commands

| Instruction | Purpose | Files Created/Updated |
|---------|---------|----------------|
| `/productkit.constitution` | Create product constitution with principles & standards | `constitution.md` |
| `/productkit.update-context` | Add/update context files (vision, personas, glossary, research) | `context/*.md` |
| `/productkit.update-inventory` | Add/update inventory files (features, constraints, data, navigation) | `inventory/*.md` |

#### Requirements Creation Commands

| Instruction | Purpose | Key Files Used |
|---------|---------|----------------|
| `/productkit.clarify` | Ask clarifying questions before creating docs | All context + inventory |
| `/productkit.brd` | Create Business Requirements Document | Constitution, Vision, Personas, Market Research |
| `/productkit.prd` | Create Product Requirements Document | All files (full validation) |
| `/productkit.epic` | Create Epic planning document | Vision (Strategic Pillars), Feature Catalog, Constraints |

### How It Works

1. **Context Awareness**: Instructions explicitly reference file locations
   ```markdown
   1. Load Constitution: Read `constitution.md`
   2. Load Product Vision: Read `context/product-vision.md`
   3. Check Constraints: Review `inventory/tech-constraints.md`
   ```

2. **Automatic Validation**: Every document is checked against:
   - ✅ Constitution standards (UX/UI, Design, Technical, Process)
   - ✅ Strategic alignment (Product Vision pillars)
   - ✅ User needs (Personas goals)
   - ✅ Technical feasibility (Tech Constraints)
   - ✅ Feature conflicts (Feature Catalog)

3. **Smart Next Steps**: Instructions suggest what to do next:
   ```yaml
   next_steps:
     - "Generate detailed PRD: Use /productkit.prd with this BRD as context"
   ```

See [`.github/agents/README.md`](.github/agents/README.md) for detailed instruction documentation and workflow patterns.

## 🧩 Key Components

| Component  | Purpose |
|------------|---------|
| **Context** | Tells Copilot **why** we are building (Vision), **who** for (Personas), the market landscape (Research), and shared terminology (Glossary). |

Once a spec is finalized using the templates, it is ready to be consumed by developers using GitHub Spec-kit. By providing a structured Markdown PRD, you eliminate 90% of the back-and-forth during the planning phase.
