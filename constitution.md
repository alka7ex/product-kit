# 📜 Product Constitution

> "The code is the law, but this document is the spirit."

## 🎯 Purpose
This document serves as the **single source of truth** for our product principles, non-negotiable standards, and decision-making frameworks.

It works in tandem with **`context/product-vision.md`**:
- **Product Vision**: Defines **WHAT** we are building (Strategy & Objectives).
- **Constitution**: Defines **HOW** we build it (Quality, Standards, & Principles).

It is used by the AI to "lint" new requirements and ensure consistency across all PRDs and Epics.

---

## 🧠 Core Principles
*Guiding values that influence every product decision.*

1.  **User-Centricity First**: We solve real user problems, not just build features. Every PRD must start with a validated user need.
2.  **Simplicity over Complexity**: If a feature requires a 3-page manual, it's too complex. Default to "less is more."
3.  **Data-Informed, Not Data-Driven**: We use data to guide us, but we also rely on product intuition and qualitative feedback.
4.  **Accessibility is Mandatory**: All new UI components must meet WCAG 2.1 AA standards.
5.  **Performance is a Feature**: No page load should exceed 2 seconds on 4G networks.

---

## 🛡️ Non-Negotiable Standards
*Hard rules that every feature must obey. The AI will flag violations.*

### UX/UI Standards
-   **Mobile Responsiveness**: All views must be fully functional on mobile devices (320px width min).
-   **Error States**: Every input field and API interaction must have a defined error state.
-   **Empty States**: Every list or dashboard must have a designed "zero data" state.

### Design & Content Standards
-   **Copywriting Style**:
    -   **Voice**: Professional, human, and concise. Avoid robot-speak (e.g., use "We couldn't find that" instead of "404 Error: Object not found").
    -   **Action-Oriented**: Use active verbs for buttons (e.g., "Save Profile" vs "Submit").
-   **Color Semantics**:
    -   **Primary**: Key actions (Submit, Continue).
    -   **Destructive**: Irreversible actions (Delete, Cancel).
    -   **Neutral**: Secondary actions, borders, backgrounds.
-   **UI Representation (ASCII)**:
    -   To keep specs version-controllable and focused on *structure* over *pixels*, use **Text-based UI (ASCII)** for wireframes.

    *Example:*
    ```text
    __________________________________________________________
    |                                                        |
    |  [🏠] Home    [👤] Profile    [⚙️] Settings    [🔍] ____ |
    |________________________________________________________|
    |                                                        |
    |  Account Information                                   |
    |  -------------------                                   |
    |                                                        |
    |  Username:   |____________________________|            |
    |                                                        |
    |  Password:   |****************************|            |
    |                                                        |
    |  Role:       [ Editor            v ]                   |
    |                                                        |
    |              [  CANCEL  ]    [** SAVE **]              |
    |________________________________________________________|
    ```

### Technical Standards
-   **Offline Mode**: Critical user flows (e.g., viewing saved data) must work without an internet connection.
-   **Security**: No PII (Personally Identifiable Information) shall be logged in plain text.
-   **Scalability**: Features must be designed to handle 10x current traffic volume.

### Process Standards
-   **Success Metrics**: No Epic can be started without defined Success Metrics (e.g., "Increase conversion by 5%").
-   **Analytics**: Every user interaction (click, view, submit) must have a tracking event defined.
-   **Rollout Plan**: Every feature must have a phased rollout strategy (Internal -> Beta -> Public).

---

## ⚖️ Decision Frameworks
*How we make trade-offs.*

### RICE Scoring (Prioritization)
-   **Reach**: How many users will this impact?
-   **Impact**: How much will this move the needle?
-   **Confidence**: How sure are we about our estimates?
-   **Effort**: How many person-weeks will this take?

### Build vs. Buy
-   If it's a core differentiator -> **Build**.
-   If it's a commodity (e.g., chat, payments) -> **Buy/Integrate**.

---

## 🔄 Review Cycle
-   **Last Updated**: [Date]
-   **Review Frequency**: Quarterly
-   **Owner**: Head of Product
