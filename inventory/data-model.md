# Data Model

## Overview

Documentation of how key entities are structured in the current system.

## Entities

### Entity 1: User

**Description:**  
**Attributes:**  
- `id` (string): Unique identifier
- `name` (string): User's full name
- `email` (string): Email address
- `created_at` (timestamp): Account creation date

**Relationships:**  
- Has many: Orders
- Belongs to: Organization

### Entity 2: Order

**Description:**  
**Attributes:**  
- `id` (string): Unique identifier
- `user_id` (string): Reference to User
- `status` (enum): Order status
- `total` (number): Total amount
- `created_at` (timestamp): Order creation date

**Relationships:**  
- Belongs to: User
- Has many: OrderItems

## Entity Relationships

```
User ─── Orders ─── OrderItems
  │
  └─── Organization
```

## Notes
