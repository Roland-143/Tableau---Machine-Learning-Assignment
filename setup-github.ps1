param(
    [Parameter(Mandatory=$true)]
    [string]$RepoUrl
)

$ErrorActionPreference = 'Stop'

Write-Host 'CS 46900 GDP Project - Connect Existing GitHub Repository' -ForegroundColor Cyan

if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    throw 'Git is not installed or is not available in PATH. Install Git for Windows, then rerun this script.'
}

if (-not (Test-Path '.git')) {
    git init
    if ($LASTEXITCODE -ne 0) { throw 'git init failed.' }
}

git branch -M main
if ($LASTEXITCODE -ne 0) { throw 'Could not set the main branch.' }

$remoteUrl = git remote get-url origin 2>$null
if ($LASTEXITCODE -eq 0) {
    git remote set-url origin $RepoUrl
} else {
    git remote add origin $RepoUrl
}
if ($LASTEXITCODE -ne 0) { throw 'Could not configure the origin remote.' }

$folders = @(
    'data/raw',
    'tableau/workbooks',
    'tableau/dashboards',
    'tableau/exports',
    'report/figures',
    'report/sections',
    'presentation/figures',
    'presentation/slides',
    'scripts'
)
foreach ($folder in $folders) {
    $keep = Join-Path $folder '.gitkeep'
    if (-not (Test-Path $keep)) {
        New-Item -ItemType File -Path $keep -Force | Out-Null
    }
}

git add .
if ($LASTEXITCODE -ne 0) { throw 'git add failed.' }

git rev-parse --verify HEAD 2>$null | Out-Null
$hasCommit = ($LASTEXITCODE -eq 0)

if (-not $hasCommit) {
    git commit -m 'chore: initialize CS469 GDP visualization project'
    if ($LASTEXITCODE -ne 0) {
        throw 'Initial commit failed. Make sure Git user.name and user.email are configured.'
    }
} else {
    $changes = git status --porcelain
    if ($changes) {
        git commit -m 'chore: add CS469 project scaffold'
        if ($LASTEXITCODE -ne 0) { throw 'Commit failed.' }
    }
}

Write-Host 'Pushing main to GitHub...' -ForegroundColor Cyan
git push -u origin main
if ($LASTEXITCODE -ne 0) { throw 'Push failed. Confirm the repository URL and your GitHub authentication.' }

Write-Host "Done. The repository is initialized and pushed to $RepoUrl" -ForegroundColor Green
