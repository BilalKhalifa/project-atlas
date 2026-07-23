$ErrorActionPreference = "Stop"

$repositoryRoot = Split-Path -Parent $PSScriptRoot
Push-Location $repositoryRoot
try {
    & git config core.hooksPath .githooks
    if ($LASTEXITCODE -ne 0) {
        throw "Git could not configure the repository hook path."
    }
}
finally {
    Pop-Location
}

Write-Host "Git hooks are active from .githooks."
