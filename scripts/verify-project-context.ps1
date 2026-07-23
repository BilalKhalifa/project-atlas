$ErrorActionPreference = "Stop"

$repositoryRoot = Split-Path -Parent $PSScriptRoot
Push-Location $repositoryRoot
try {
    $stagedFiles = @(& git diff --cached --name-only --diff-filter=ACMR 2>$null)
}
finally {
    Pop-Location
}

if ($stagedFiles.Count -eq 0) {
    exit 0
}

$contextFile = "docs/PROJECT_CONTEXT.md"
$workflowOnlyFiles = @(
    $contextFile,
    "AGENTS.md",
    "CLAUDE.md",
    ".agents/rules/atlas-project-context.md",
    ".githooks/pre-commit",
    "scripts/update-project-context.ps1",
    "scripts/verify-project-context.ps1",
    "scripts/install-git-hooks.ps1"
)

$meaningfulChanges = @($stagedFiles | Where-Object { $_ -notin $workflowOnlyFiles })
if ($meaningfulChanges.Count -eq 0) {
    exit 0
}

if ($contextFile -notin $stagedFiles) {
    Write-Error @"
Project context is stale for this commit.

Run:
  .\scripts\update-project-context.ps1 -Summary "Describe the completed change and any decision it made."

Then stage docs/PROJECT_CONTEXT.md with the rest of the task.
"@
    exit 1
}

$stagedContext = & git show ":$contextFile" 2>$null
if ($LASTEXITCODE -ne 0 -or $stagedContext -notmatch "\*\*Last updated:\*\* \d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2} IST") {
    Write-Error "The staged canonical context is missing a valid Last updated timestamp. Run scripts/update-project-context.ps1 and stage the file again."
    exit 1
}
