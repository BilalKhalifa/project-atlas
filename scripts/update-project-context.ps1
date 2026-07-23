[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [ValidateNotNullOrEmpty()]
    [string]$Summary,

    [string]$Owner = "Agent"
)

$ErrorActionPreference = "Stop"

$repositoryRoot = Split-Path -Parent $PSScriptRoot
$contextPath = Join-Path $repositoryRoot "docs\PROJECT_CONTEXT.md"

if (-not (Test-Path -LiteralPath $contextPath)) {
    throw "Canonical context file not found: $contextPath"
}

$summary = ($Summary -replace "\s+", " ").Trim()
if ($summary.Length -gt 500) {
    throw "Summary must be 500 characters or fewer."
}

$owner = ($Owner -replace "\s+", " ").Trim()
if ($owner.Length -gt 80) {
    throw "Owner must be 80 characters or fewer."
}

try {
    $timeZone = [System.TimeZoneInfo]::FindSystemTimeZoneById("India Standard Time")
}
catch {
    $timeZone = [System.TimeZoneInfo]::FindSystemTimeZoneById("Asia/Kolkata")
}
$timestamp = [System.TimeZoneInfo]::ConvertTimeFromUtc([DateTime]::UtcNow, $timeZone).ToString("yyyy-MM-dd HH:mm:ss 'IST'")

Push-Location $repositoryRoot
try {
    $statusLines = @(& git status --short 2>$null)
}
finally {
    Pop-Location
}

$changedFiles = @(
    $statusLines |
        ForEach-Object {
            if ($_.Length -ge 4) { $_.Substring(3).Trim() }
        } |
        Where-Object { -not [string]::IsNullOrWhiteSpace($_) } |
        Select-Object -Unique
)

$fileLines = if ($changedFiles.Count -eq 0) {
    "- No uncommitted files were detected when this context was refreshed."
}
else {
    $visibleFiles = $changedFiles | Select-Object -First 15
    $lines = $visibleFiles | ForEach-Object { "- ``$_``" }
    if ($changedFiles.Count -gt $visibleFiles.Count) {
        $lines += "- …and $($changedFiles.Count - $visibleFiles.Count) additional changed files."
    }
    $lines
}

$metadataBlock = @"
<!-- CONTEXT_METADATA_START -->
- **Last updated:** $timestamp
- **Update owner:** $owner
- **Context status:** Active and canonical
<!-- CONTEXT_METADATA_END -->
"@

$latestUpdateBlock = @"
<!-- CONTEXT_LATEST_UPDATE_START -->
- **$timestamp — $($owner):** $summary
<!-- CONTEXT_LATEST_UPDATE_END -->
"@

$filesBlock = @"
<!-- CONTEXT_FILES_START -->
$($fileLines -join [Environment]::NewLine)
<!-- CONTEXT_FILES_END -->
"@

$content = Get-Content -Raw -LiteralPath $contextPath
$content = [regex]::Replace($content, "(?s)<!-- CONTEXT_METADATA_START -->.*?<!-- CONTEXT_METADATA_END -->", [System.Text.RegularExpressions.MatchEvaluator]{ param($match) $metadataBlock }, 1)
$content = [regex]::Replace($content, "(?s)<!-- CONTEXT_LATEST_UPDATE_START -->.*?<!-- CONTEXT_LATEST_UPDATE_END -->", [System.Text.RegularExpressions.MatchEvaluator]{ param($match) $latestUpdateBlock }, 1)
$content = [regex]::Replace($content, "(?s)<!-- CONTEXT_FILES_START -->.*?<!-- CONTEXT_FILES_END -->", [System.Text.RegularExpressions.MatchEvaluator]{ param($match) $filesBlock }, 1)

[System.IO.File]::WriteAllText($contextPath, $content, [System.Text.UTF8Encoding]::new($false))
Write-Host "Updated docs/PROJECT_CONTEXT.md at $timestamp."
