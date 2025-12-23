# 🗄️ Data Model

> "How our entities relate to each other."

## 1. Entity Relationship Diagram (ERD)

```mermaid
erDiagram
    User ||--o{ Membership : has
    Workspace ||--o{ Membership : contains
    Workspace ||--o{ Project : owns
    Project ||--o{ Task : contains
    Task ||--o{ Comment : has
    User ||--o{ Comment : writes

    User {
        string id PK
        string email
        string password_hash
        datetime created_at
    }

    Workspace {
        string id PK
        string name
        string plan_type "free, pro, enterprise"
    }

    Membership {
        string user_id FK
        string workspace_id FK
        string role "owner, member, viewer"
    }
```

## 2. Key Entities

### 👤 User
-   **Source of Truth**: `users` table.
-   **Key Constraints**: Email must be unique.

### 🏢 Workspace
-   **Source of Truth**: `workspaces` table.
-   **Key Constraints**: `plan_type` defaults to "free".

### 📋 Task
-   **Source of Truth**: `tasks` table.
-   **Key Constraints**: `status` enum (`todo`, `in_progress`, `done`).

---

## 3. Data Lifecycle

-   **Retention**: Deleted tasks are "soft deleted" (kept for 30 days) before permanent removal.
-   **Archival**: Projects inactive for > 1 year are moved to cold storage.
