# Experience Information Architecture

Version: 1.0

Status: Draft

Last Updated: 2026-07-21

---

# Purpose

This document defines how users navigate and understand Atlas.

Rather than describing the product's feature hierarchy, it focuses on how information is discovered, how users move through the application, and how navigation should support both beginner and power users.

The goal is to make Atlas feel immediately familiar while enabling fast, keyboard-first workflows.

---

# Navigation Philosophy

Atlas follows a hybrid navigation model.

The interface combines:

- Persistent Sidebar

- Global Search

- Contextual Navigation

- Keyboard Shortcuts

- Command Actions

Users should never be forced into a single navigation style.

---

# Navigation Goals

Atlas navigation should be:

- Predictable

- Fast

- Discoverable

- Keyboard Accessible

- Consistent

- Minimal

Navigation should disappear into the background and allow users to focus on their tasks.

---

# Primary Navigation

Primary navigation is always available through the sidebar.

It provides access to the major areas of the application.

\`

Atlas

│

├── Dashboard

├── Vault

├── Security

├── Import & Export

├── Settings

└── Account

\`

Primary navigation should remain stable throughout the application.

Items should not move or reorder automatically.

---

# Secondary Navigation

Each section provides its own local navigation.

Example:

Vault

\`

Vault

│

├── All Items

├── Logins

├── Passkeys

├── Secure Notes

├── Payment Cards

├── Identities

├── API Keys

├── SSH Keys

├── Software Licenses

├── Wi-Fi Passwords

├── Archive

└── Trash

\`

Users should always understand which category they are currently viewing.

---

# Global Search

Global Search is the fastest navigation method.

Shortcut:

Ctrl/Cmd + K

Users should be able to search:

- Credentials

- Notes

- Cards

- Settings

- Commands

- Security Reports

Search is not limited to content.

It is also a navigation tool.

---

# Command Actions

Atlas Search supports commands.

Examples:

- Add Credential

- Lock Vault

- Generate Password

- Open Settings

- Sync Vault

- Import Passwords

- Export Vault

Users should be able to perform common actions without leaving the keyboard.

---

# Contextual Navigation

Pages should provide navigation relevant to the current task.

Examples include:

- Breadcrumbs

- Back Navigation

- Tabs

- Filters

- Sorting

- Quick Actions

Contextual navigation should never replace primary navigation.

---

# Progressive Disclosure

Atlas should reveal complexity gradually.

Beginner users should see only what they need.

Advanced functionality should appear naturally as users explore.

Examples:

- Advanced Password Generator Settings

- Vault Organization

- Identity Management

- Security Analytics

---

# Cross Navigation

Users should be able to move naturally between related information.

Examples:

Credential

↓

Open Website

↓

Security Report

↓

Password Health

↓

Identity

↓

Recent Activity

Navigation should feel connected rather than isolated.

---

# Search First

Search is a first-class navigation method.

Users should be able to find information even if they don't know where it is located.

Atlas Search should support:

- Fuzzy Search

- Keyboard Navigation

- Recent Searches

- Recent Commands

- Favorites

- Quick Preview

Future versions may support natural language search.

---

# Keyboard First

Every important action should have a keyboard shortcut.

Examples:

Ctrl/Cmd + K

Open Atlas Search

Ctrl/Cmd + N

New Credential

Ctrl/Cmd + L

Lock Vault

Ctrl/Cmd + ,

Open Settings

Esc

Close Dialog

Arrow Keys

Navigate Lists

Enter

Open Selected Item

---

# Mobile Navigation

Mobile follows the same information architecture while adapting navigation patterns.

Primary navigation should remain easy to reach using one hand.

Search remains the primary discovery tool.

Complex nested menus should be avoided.

---

# Browser Extension Navigation

The browser extension focuses on speed.

Primary sections:

- Suggestions

- Search

- Generate Password

- Recently Used

- Settings

The extension should minimize navigation depth.

Most actions should be completed within two interactions.

---

# Design Principles

Navigation should answer four questions at all times.

Where am I?

What can I do?

Where can I go?

How do I return?

If users cannot answer these questions, the navigation should be simplified.

---

# Future Navigation

Future versions may introduce:

- Workspace Switching

- Team Navigation

- Shared Vaults

- AI Assistant

- Identity Dashboard

These additions must not disrupt the existing navigation model.

---

# Related Documents

- ../01-product/[information-architecture.md](http://information-architecture.md)

- [user-flows.md](http://user-flows.md)

- [search.md](http://search.md)

- [vault.md](http://vault.md)

- ../03-design/[design-language.md](http://design-language.md)

- ../03-design/[design-system.md](http://design-system.md)

- ../decisions/[0003-navigation-system.md](http://0003-navigation-system.md)