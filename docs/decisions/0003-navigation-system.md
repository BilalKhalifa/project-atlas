# ADR-0003: Navigation System

Date: 2026-07-19

## Status

Accepted

---

## Context

Atlas needs to support two different user behaviors:

1 . Users who browse the application using familiar navigation.

2 . Users who prefer fast, keyboard-driven workflows.

Choosing only a sidebar would feel traditional.

Choosing only a command palette would make the application less approachable for many users.

---

## Decision

Atlas will adopt a hybrid navigation model.

### Primary Navigation

A persistent sidebar provides access to:

- Dashboard

- Vault

- Security

- Import & Export

- Settings

- Account

This keeps the application familiar and easy to learn.

---

### Secondary Navigation

Atlas Search (Ctrl/Cmd + K) becomes the fastest way to interact with the application.

Users can search:

- Credentials

- Secure Notes

- Cards

- Identities

- Settings

- Security pages

Atlas Search also supports actions such as:

- Add Credential

- Generate Password

- Lock Vault

- Sync

- Open Settings

---

## Design Philosophy

The sidebar provides discoverability.

Atlas Search provides speed.

The two systems complement each other rather than compete.

---

## Inspiration

Navigation:

- Bitwarden

- 1Password

Interaction Philosophy:

- Raycast

- Linear

- Notion

Atlas should not copy their visual design.

Instead, it should adopt their focus on speed, clarity, and thoughtful interaction.

---

## Guiding Principle

"Familiar enough to learn in minutes.

Powerful enough to master over time."