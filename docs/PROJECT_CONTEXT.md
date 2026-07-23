# Atlas Project Context

<!-- CONTEXT_METADATA_START -->
- **Last updated:** 2026-07-23 22:28:43 IST
- **Update owner:** Codex
- **Context status:** Active and canonical
<!-- CONTEXT_METADATA_END -->

This is the short, shared project contract for Codex, Claude Desktop, and Antigravity. Read it before planning or making a change. It captures the current state; detailed specifications remain in the linked documentation.

## Product at a glance

Atlas is an open-source, privacy-first password manager that is intended to evolve into a digital-identity workspace. It helps people organise credentials and sensitive information, understand security risks, and take clear next steps without fear-based language.

Atlas is **authenticated software**, not a SaaS marketing site. Users should arrive at authentication or, when already signed in, the application itself.

## Active product and design decisions

- The first release focuses on reliable everyday credential management: vault, search, password generation, password health, import/export, authentication, and browser-extension workflows.
- The application is **desktop-first and responsive**. Mobile support must adapt the same information architecture; it does not set the primary layout.
- Navigation is hybrid: a persistent sidebar for discovery and visible global search / command palette (`Ctrl/Cmd + K`) for speed.
- The application shell is the first design priority: sidebar, top bar, persistent search, theme control, notifications, user menu, and command palette. Do not design a landing, pricing, testimonial, feature-marketing, or download page unless explicitly requested.
- The visual character is calm, premium, minimal, trustworthy, keyboard-friendly, and accessible. Avoid cyberpunk, neon, hacker-movie, generic enterprise-dashboard, Material-clone, and Bootstrap aesthetics.
- Use **Geist** for application UI and **JetBrains Mono** only where a monospace face improves readability of technical or secret-like values.
- Use restrained liquid-glass treatment only for hierarchy-bearing navigation and floating surfaces: sidebar, top bar, search, command palette, dialogs, popovers, and context menus. Keep vault lists, forms, tables, and ordinary dashboard content solid and high-contrast.
- Motion is subtle, purposeful, interruptible, and respects reduced-motion preferences. Normal UI transitions should generally stay within 100Ã¢â‚¬â€œ250 ms.

## Architecture and security guardrails

- The accepted stack is recorded in [ADR 0005](decisions/0005-architecture-stack.md): Turborepo, pnpm, Next.js 15, TypeScript, Tailwind CSS v4, shadcn/ui, Lucide React, Framer Motion, Clerk, PostgreSQL/Neon, Prisma, Zod, React Hook Form, Zustand, TanStack Query, Sonner, TanStack Table, and REST.
- Do not introduce libraries or architectural patterns without an approved decision.
- Never store, log, or expose vault secrets in plaintext. Do not place real credentials or tokens in documentation.
- Atlas claims such as end-to-end encryption and zero knowledge require a dedicated, approved security-model ADR before implementation. That ADR must cover threat model, client-side encryption, key derivation, key lifecycle, device access, recovery, sync, browser-extension boundaries, and export behaviour.

## Current project status

- The repository currently contains product, research, design, experience, and ADR documentation plus empty `frontend/` and `backend/` directories; an application scaffold has not yet been established.
- The `design/` directory is currently untracked. Treat it as user-owned input, not canonical product documentation, until it is reviewed and deliberately added to version control.
- Documentation consolidation is in progress. This context resolves the active desktop-first, Geist, and restrained-glass direction. Existing drafts may still contain older, conflicting guidance.
- Open decisions before implementation: precise MVP item-type scope, folders versus tags, MFA/passkey scope, and the security model described above.

## Documentation hierarchy

1. This file records the latest active project state and explicitly resolved current decisions.
2. Accepted ADRs govern their respective technical decisions.
3. Detailed documents in `00-foundation`, `01-product`, `03-design`, and `04-experience` govern their domain when consistent with the two sources above.
4. Drafts, research ideas, and the legacy `docs/.ai/ATLAS_CONTEXT.md` are background only.

If two authoritative documents conflict, stop and request a decision; do not silently choose one.

## Context-maintenance protocol

After every meaningful change to code, design, documentation, architecture, scope, or an accepted decision:

1. Update the relevant detailed document or ADR.
2. Run `./scripts/update-project-context.ps1 -Summary "Ã¢â‚¬Â¦"` from the repository root.
3. Confirm that the **Last updated** timestamp, current status, and changed-file snapshot are accurate.
4. Stage `docs/PROJECT_CONTEXT.md` with the rest of the task.

The Git pre-commit hook enforces step 4 for meaningful staged changes. It cannot infer the intent of a change; the agent or contributor must provide the concise summary.

## Latest update

<!-- CONTEXT_LATEST_UPDATE_START -->
- **2026-07-23 22:28:43 IST â€” Codex:** Created the shared cross-agent context, agent entry points, Antigravity rule, and verified commit-time context check.
<!-- CONTEXT_LATEST_UPDATE_END -->

## Working-tree snapshot

<!-- CONTEXT_FILES_START -->
- `docs/.ai/ATLAS_CONTEXT.md`
- `docs/.ai/START_HERE.md`
- `docs/README.md`
- `.agents/`
- `.githooks/`
- `AGENTS.md`
- `CLAUDE.md`
- `docs/PROJECT_CONTEXT.md`
- `scripts/`
<!-- CONTEXT_FILES_END -->
