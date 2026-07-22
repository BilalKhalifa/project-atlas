# Architecture Decision Record 0005

## Title

Official Technology Stack

---

## Version

1.0

---

## Status

Accepted

---

## Date

2026-07-23

---

# Context

Atlas is intended to be a modern, open-source password manager focused on security, performance, maintainability, and an exceptional user experience.

The technology stack must satisfy the following goals:

- Excellent developer experience

- Long-term maintainability

- Strong TypeScript support

- Scalable architecture

- Modern UI development

- Secure authentication

- Browser extension compatibility

- Future support for mobile applications

- AI-assisted development

This ADR defines the official technology stack for Atlas. Any previous documents mentioning different technologies (such as React + Express + MongoDB) are considered historical and are superseded by this decision.

---

# Decision

## Monorepo

**Turborepo**

Reason

- Official Vercel solution

- Excellent support for multiple applications

- Shared packages

- Incremental builds

- Easy future expansion

---

## Package Manager

**pnpm**

Reason

- Fast installation

- Efficient disk usage

- Excellent monorepo support

- Preferred by the modern TypeScript ecosystem

---

## Frontend Framework

**Next.js 15**

Reason

- App Router

- Server Components

- Route Handlers

- Excellent TypeScript support

- Outstanding developer experience

- Easy deployment on Vercel

---

## Language

**TypeScript**

Reason

- Type safety

- Better refactoring

- Improved AI-generated code quality

- Better maintainability

---

## Styling

**Tailwind CSS v4**

Reason

- Utility-first workflow

- Excellent performance

- Easy theme customization

- Strong ecosystem

---

## UI Components

**shadcn/ui**

Reason

- Accessible components

- Full ownership of source code

- Excellent customization

- Modern design philosophy

---

## Icons

**Lucide React**

Reason

- Lightweight

- Consistent

- Open source

- Modern icon library

---

## Animation

**Framer Motion**

Reason

- Industry standard

- Smooth animations

- Excellent React integration

---

## Theme Management

**next-themes**

Reason

- Dark mode

- Light mode

- System theme support

---

## Authentication

**Clerk**

Reason

- Authentication only

- Passkeys

- MFA

- OAuth providers

- Excellent Next.js integration

- Secure session management

---

## Database

**PostgreSQL**

Hosted on:

**Neon**

Reason

- Reliable

- Scalable

- Excellent Prisma support

- Serverless architecture

---

## ORM

**Prisma**

Reason

- Type-safe database access

- Great migration system

- Excellent developer experience

---

## Validation

**Zod**

Reason

- Runtime validation

- Shared client/server schemas

- Strong TypeScript integration

---

## Forms

**React Hook Form**

Reason

- Performance

- Excellent integration with Zod

- Minimal re-renders

---

## Client State

**Zustand**

Reason

- Lightweight

- Minimal boilerplate

- Ideal for UI state

---

## Server State

**TanStack Query**

Reason

- API caching

- Automatic refetching

- Request deduplication

- Optimistic updates

---

## Notifications

**Sonner**

Reason

- Clean API

- Beautiful UI

- Lightweight

---

## Data Tables

**TanStack Table**

Reason

- Flexible

- Headless

- High performance

---

## API Style

**REST**

Reason

- Browser extension compatibility

- Future mobile compatibility

- Public API readiness

- Simplicity

---

## Deployment

Frontend

- Vercel

Database

- Neon

Authentication

- Clerk

---

# Alternatives Considered

## React + Express

Rejected

Reason

Maintaining separate frontend and backend applications increases complexity without providing significant benefits for the Atlas MVP.

---

## MongoDB

Rejected

Reason

Relational data is a better fit for password management, auditing, sharing, and future enterprise features.

---

## Firebase

Rejected

Reason

Vendor lock-in and limited relational capabilities.

---

## Supabase Authentication

Rejected

Reason

Clerk provides a more complete authentication experience with better passkey support and developer experience.

---

## tRPC

Rejected

Reason

Although excellent for full-stack TypeScript applications, REST provides better interoperability with browser extensions, future mobile applications, and potential public APIs.

---

# Consequences

Positive

- Modern developer experience

- Strong type safety

- Easy onboarding

- Excellent scalability

- Future-ready architecture

- AI-friendly codebase

Negative

- Learning curve for TypeScript

- Learning Prisma

- Learning Next.js App Router

- Learning Turborepo

These are considered acceptable trade-offs.

---

# Future Review

This ADR should only be revisited if one of the following occurs:

- Major framework changes

- Significant ecosystem shifts

- Product requirements fundamentally change

Otherwise, this stack is considered stable for Atlas v1.

---

# Related Documents

- docs/00-foundation/[vision.md](http://vision.md)

- docs/01-product/[mvp.md](http://mvp.md)

- docs/03-design/[design-system.md](http://design-system.md)

- docs/04-experience/[authentication.md](http://authentication.md)