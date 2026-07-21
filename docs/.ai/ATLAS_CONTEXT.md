# Atlas AI Context

Version: 1.0

This document provides the essential context required for an AI coding assistant to work effectively on Atlas.

It summarizes the project's goals, architecture, design philosophy, engineering standards, and product decisions.

Read this document before implementing any feature.

---

# Project Overview

Atlas is an open-source password manager focused on privacy, simplicity, and thoughtful design.

Atlas is designed to become a modern digital identity platform rather than just a place to store passwords.

The long-term vision includes secure credential management, identity management, passkeys, browser integration, and intelligent security assistance.

---

# Mission

Build a password manager that people genuinely enjoy using.

Security should feel calm rather than intimidating.

Users should trust Atlas because of its transparency, simplicity, and consistency.

---

# Core Values

- Privacy First

- Open Source

- Security by Default

- Simple by Design

- Transparency

- Accessibility

- Performance

- Developer Experience

---

# Product Philosophy

Atlas should never overwhelm users.

Complexity should be introduced gradually.

The interface should prioritize clarity over feature density.

Every interaction should reduce friction rather than increase it.

---

# Design Philosophy

The interface should feel:

- Calm

- Modern

- Premium

- Minimal

- Intentional

Avoid:

- Neon aesthetics

- Hacker-style interfaces

- Heavy glassmorphism

- Excessive gradients

- Unnecessary animations

---

# Motion Philosophy

Motion exists to communicate.

Animation should explain state changes, improve orientation, and provide feedback.

Animation should never exist purely for decoration.

Use motion sparingly.

Respect the user's reduced-motion preference.

---

# Navigation Philosophy

Atlas uses a hybrid navigation model.

Primary navigation:

Sidebar

Secondary navigation:

Contextual navigation within sections.

Fast navigation:

Global Search (Ctrl/Cmd + K)

Search is a first-class navigation system.

---

# Experience Principles

Every feature should answer:

- What happened?

- Why did it happen?

- What can the user do next?

Every interaction should:

- Feel predictable

- Minimize friction

- Preserve user context

- Be recoverable

---

# MVP Scope

Included:

- Authentication

- Vault

- Password Generator

- Browser Extension

- Password Health

- Import / Export

- Search

Excluded:

- Teams

- AI Assistant

- Secure Files

- Shared Vaults

- Enterprise Features

- VPN

These features may exist in documentation but should not be implemented until after the MVP.

---

# Item Types

Current MVP supports:

- Logins

- Passkeys

- Secure Notes

- Payment Cards

- Identities

- API Keys

- SSH Keys

- Software Licenses

- Wi-Fi Passwords

Future item types should extend the existing model without breaking compatibility.

---

# Tech Stack

Frontend

- Next.js 15

- React 19

- TypeScript

- Tailwind CSS v4

- shadcn/ui

Backend

- Next.js Route Handlers

- Prisma

- PostgreSQL

Authentication

- Clerk

Validation

- Zod

State

- Zustand

Data Fetching

- TanStack Query

Monorepo

- Turborepo

Package Manager

- pnpm

---

# Development Principles

Prefer:

- Composition over inheritance

- Reusable components

- Small focused files

- Predictable APIs

- Explicit typing

- Server Components when appropriate

Avoid:

- Business logic inside UI

- Duplicate validation

- Deep prop drilling

- Global mutable state

---

# UI Principles

Always:

- Mobile First

- Responsive

- Accessible

- Keyboard Friendly

Never:

- Hide critical actions

- Depend on hover interactions

- Use animation for decoration

- Use inconsistent spacing

---

# Security Principles

Never:

- Store secrets in plaintext

- Log sensitive data

- Leak encryption keys

- Expose internal errors

Always:

- Validate inputs

- Encrypt sensitive data

- Confirm destructive actions

- Respect least-privilege principles

---

# Documentation

The `/docs` directory is the source of truth.

Implementation should follow the documentation whenever possible.

Relevant documents include:

- docs/00-foundation

- docs/01-product

- docs/03-design

- docs/04-experience

- docs/decisions

If implementation conflicts with documentation, documentation takes priority unless explicitly updated.

---

# Expected Code Quality

Code should be:

- Readable

- Consistent

- Self-documenting

- Well-typed

- Easy to maintain

- Easy to test

Avoid clever solutions when a simpler approach exists.

---

# AI Instructions

Before implementing a feature:

1 . Read the relevant documentation.

2 . Identify dependencies.

3 . Follow the established architecture.

4 . Reuse existing components whenever possible.

5 . Preserve consistency with previous implementations.

If documentation is incomplete, ask for clarification instead of making assumptions.

Do not introduce new frameworks, libraries, or architectural patterns without a clear justification.

---

# Long-Term Vision

Atlas should eventually become a complete digital identity platform.

Potential future capabilities include:

- Login Intelligence

- Passkey Management

- Identity Graph

- Secure File Storage

- AI Security Assistant

- Shared Vaults

- Team Workspaces

These ideas should not influence MVP implementation unless explicitly requested.

---

# Guiding Principle

Every change should make Atlas simpler, safer, or more enjoyable to use.

If a feature increases complexity without providing meaningful value, it should be reconsidered.