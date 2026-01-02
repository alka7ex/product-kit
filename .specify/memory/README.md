# Memory Files

This directory contains the core knowledge base for Product Kit. These files provide context for GitHub Copilot when creating product requirements.

## Available Memory Files

### Core Principles
- [`constitution.md`](../../constitution.md) - Product principles, standards, and decision frameworks

### Product Context
- [`product-vision.md`](../../context/product-vision.md) - Strategic direction and business objectives
- [`personas.md`](../../context/personas.md) - Target user profiles and behaviors
- [`market-research.md`](../../context/market-research.md) - Competitive analysis and market positioning
- [`glossary.md`](../../context/glossary.md) - Standard terminology and definitions

### Current State (Inventory)
- [`data-model.md`](../../inventory/data-model.md) - Entity relationships and data structures
- [`feature-catalog.md`](../../inventory/feature-catalog.md) - Existing features and business logic
- [`product-map.md`](../../inventory/product-map.md) - Navigation structure and user flows
- [`tech-constraints.md`](../../inventory/tech-constraints.md) - Technical limitations and dependencies

## Usage

When creating a BRD, PRD, or Epic, GitHub Copilot should:
1. Load `constitution.md` to understand quality standards
2. Reference `product-vision.md` for strategic alignment
3. Check `personas.md` to validate user needs
4. Review `feature-catalog.md` to avoid conflicts
5. Consult `tech-constraints.md` for feasibility
6. Use `glossary.md` for consistent terminology
