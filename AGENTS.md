# Atlas Agent Instructions

## Start here

Before planning, designing, or changing Atlas, read [the canonical project context](docs/PROJECT_CONTEXT.md). Then read the documents relevant to the task.

## Documentation authority

1. `docs/PROJECT_CONTEXT.md` records the active project state and explicitly resolved current decisions.
2. Accepted ADRs in `docs/decisions/` govern their respective technical decisions.
3. Detailed product, design, and experience documents define behaviour when they do not conflict with the two sources above.
4. Drafts, ideas, and legacy AI context are non-authoritative. If they conflict, do not guess; ask for direction and update the canonical documents once a decision is made.

## Context maintenance is required

At the end of every meaningful task that changes code, design, documentation, architecture, or scope, refresh the shared status before committing:

```powershell
.\scripts\update-project-context.ps1 -Summary "Describe the completed change and any decision it made."
```

Stage `docs/PROJECT_CONTEXT.md` with the rest of the task. The repository's pre-commit hook rejects meaningful changes when the refreshed context is not staged.

Do not put secrets, passwords, tokens, vault data, personal information, or production URLs in project context or commit messages.

## Working rules

- Treat Atlas as authenticated desktop-first software, not a marketing website.
- Preserve the calm, minimal, accessible, keyboard-first experience in the canonical context.
- Do not make encryption, key-management, authentication-recovery, or other security-model decisions without an approved ADR.
- Keep agent-specific files as pointers only. Shared project facts belong in `docs/PROJECT_CONTEXT.md` or the appropriate canonical document.
