# User Flows

Version: 1.0

Status: Draft

Last Updated: 2026-07-21

---

# Purpose

This document defines the primary user journeys within Atlas.

Rather than describing individual screens, it focuses on the complete experience users have while interacting with the product.

These flows guide UX decisions, UI design, animations, component behavior, and future feature development.

---

# Scope

This document covers:

- First-time user experience

- Authentication

- Vault interactions

- Search

- Browser extension interactions

- Security workflows

- Credential management

Implementation details are intentionally excluded.

---

# Experience Principles

Every user flow should follow these principles.

## Clarity

Users should always understand:

- Where they are.

- What just happened.

- What they can do next.

---

## Confidence

Every important action should provide clear feedback.

The user should never question whether an operation succeeded.

---

## Efficiency

Reduce unnecessary steps.

Support both mouse-first and keyboard-first workflows.

---

## Continuity

Transitions between screens and components should feel connected.

Whenever appropriate, use contextual motion to maintain a user's mental model.

---

## Recovery

Mistakes should be reversible whenever possible.

Deletion, import, and destructive actions should provide confirmation or recovery options.

---

# Core User Flows

## 1. First-Time User

### Goal

Help new users begin using Atlas with confidence.

### Flow

```
Landing Page

↓

Create Account

↓

Verify Email (if required)

↓

Create Master Password

↓

Welcome

↓

Optional Product Introduction

↓

Import Existing Passwords

↓

Install Browser Extension (Recommended)

↓

Save First Credential

↓

Dashboard
```

### Success Criteria

The user understands:

- how Atlas works

- where their data is stored

- how to save passwords

- how to use the browser extension

---

## 2. Returning User

### Goal

Allow users to access their vault as quickly as possible.

### Flow

```
Open Atlas

↓

Authenticate

↓

Unlock Vault

↓

Dashboard

↓

Continue Previous Work
```

### Success Criteria

Users reach their vault within seconds.

---

## 3. Save Credential

### Goal

Store a newly created credential with minimal effort.

### Flow

```
User Creates Account

↓

Atlas Detects New Credential

↓

Save Prompt

↓

Review Information

↓

Save

↓

Success Feedback
```

### Notes

Future versions may suggest:

- Folder

- Tags

- Login Method

- Identity Provider

---

## 4. Search

### Goal

Allow users to instantly locate information.

### Flow

```
Open Atlas Search

↓

Type Query

↓

Results Update Instantly

↓

Select Result

↓

Quick Actions
```

### Supported Search

- Credentials

- Secure Notes

- Cards

- Identities

- Settings

- Commands

---

## 5. View Credential

### Goal

Allow users to safely inspect stored information.

### Flow

```
Search or Browse

↓

Open Credential

↓

View Details

↓

Copy / Edit / Open Website
```

---

## 6. Edit Credential

### Goal

Allow users to update stored information.

### Flow

```
Open Credential

↓

Edit

↓

Save

↓

Success Feedback
```

---

## 7. Delete Credential

### Goal

Prevent accidental deletion.

### Flow

```
Open Credential

↓

Delete

↓

Confirmation

↓

Move to Trash

↓

Undo (Temporary)
```

Permanent deletion should occur only after the configured retention period.

---

## 8. Import Passwords

### Goal

Help users migrate from another password manager.

### Flow

```
Settings

↓

Import

↓

Select Source

↓

Upload File

↓

Preview

↓

Import

↓

Summary
```

### Requirements

Users should always review imported data before confirmation.

---

## 9. Export Vault

### Goal

Allow users to leave Atlas at any time.

### Flow

```
Settings

↓

Export

↓

Authenticate

↓

Choose Format

↓

Export
```

### Principle

Atlas should never lock users into the platform.

---

## 10. Password Health

### Goal

Help users improve security over time.

### Flow

```
Dashboard

↓

Security

↓

Recommendations

↓

Resolve Issue

↓

Security Score Updates
```

### Future

Future versions may provide guided remediation.

---

## 11. Browser Extension

### Goal

Assist users while browsing.

### Flow

```
Visit Website

↓

Atlas Detects Login Form

↓

Autofill Suggestion

↓

Authenticate (if required)

↓

Fill Credential

↓

Continue Browsing
```

---

## 12. Lock Vault

### Goal

Secure user data immediately.

### Flow

```
User Locks Vault

↓

Vault Closes

↓

Authentication Screen
```

### Notes

This interaction should feel immediate and reassuring.

---

## 13. Logout

### Goal

End the current session securely.

### Flow

```
Settings

↓

Logout

↓

Confirmation

↓

Landing Page
```

---

# Cross-Flow Principles

Every flow should:

- Minimize user effort.

- Provide immediate feedback.

- Support keyboard navigation.

- Be accessible.

- Handle errors gracefully.

- Preserve user context whenever possible.

---

# Future Flows

The following experiences are planned but not part of the MVP.

- Passkey Management

- Shared Vaults

- Secure File Storage

- Identity Management

- Login Intelligence

- AI Security Assistant

---

# Related Documents

- ../01-product/[user-journeys.md](http://user-journeys.md)

- ../01-product/[information-architecture.md](http://information-architecture.md)

- ../03-design/[design-language.md](http://design-language.md)

- ../03-design/[design-system.md](http://design-system.md)

- ../03-design/[motion.md](http://motion.md)

- ../03-design/[accessibility.md](http://accessibility.md)

- [onboarding.md](http://onboarding.md)

- [authentication.md](http://authentication.md)

- [vault.md](http://vault.md)

- [search.md](http://search.md)

- [security.md](http://security.md)

- [micro-interactions.md](http://micro-interactions.md)