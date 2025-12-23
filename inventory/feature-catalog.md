# 📚 Feature Catalog

> "The encyclopedia of 'How it works today'."

## 1. Authentication Module

### 🔐 Login
-   **Description**: Allows users to access their account.
-   **Logic**:
    -   Supports Email/Password and Google OAuth.
    -   Locks account after 5 failed attempts (30 min cooldown).
    -   Session timeout: 7 days.

### 🔑 Password Reset
-   **Description**: Self-serve password recovery.
-   **Logic**:
    -   Sends a magic link (valid for 1 hour).
    -   Link is one-time use only.

---

## 2. Billing Module

### 💳 Subscription Management
-   **Description**: Upgrade/Downgrade plans.
-   **Logic**:
    -   **Proration**: Upgrades are charged immediately (prorated). Downgrades take effect at the end of the cycle.
    -   **Failed Payments**: Retry 3 times over 7 days, then lock account.

---

## 3. Core Features

### 📝 Task Management
-   **Description**: Create, edit, and move tasks.
-   **Logic**:
    -   Task Title: Max 140 chars.
    -   Description: Markdown supported.
    -   Assignee: Must be a member of the workspace.
    -   Due Date: Cannot be in the past.

### 🔔 Notifications
-   **Description**: In-app and email alerts.
-   **Logic**:
    -   Triggered when: Assigned to a task, Mentioned in a comment.
    -   Batching: Email notifications are batched every 15 mins to prevent spam.
