# Atlas — Start Here

Before planning, designing, or writing code, read these documents in order:

1. [Shared Project Context](../PROJECT_CONTEXT.md)
2. [Repository Agent Instructions](../../AGENTS.md)
3. The applicable accepted ADR in `../decisions/`
4. The relevant detailed product, design, and experience specification

`PROJECT_CONTEXT.md` is the current shared contract for Codex, Claude Desktop, and Antigravity. The older files in this directory are useful background, but they may contain superseded draft guidance.

After every meaningful change, refresh the shared context before committing:

```powershell
.\scripts\update-project-context.ps1 -Summary "Describe the completed change and any decision it made."
```
