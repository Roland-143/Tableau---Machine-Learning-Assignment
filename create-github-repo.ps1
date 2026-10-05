param(
    [Parameter(Mandatory=$true)]
    [ValidatePattern('^[A-Za-z0-9._-]+$')]
    [string]$RepoName,

    [ValidateSet('private','public')]
    [string]$Visibility = 'private'
)

$ErrorActionPreference = 'Stop'

Write-Host 'CS 46900 GDP Project - Create GitHub Repository' -ForegroundColor Cyan

if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    throw 'Git is not installed or is not available in PATH.'
}

if (-not (Get-Command gh -ErrorAction SilentlyContinue)) {
    throw 'GitHub CLI (gh) is not installed. Install it, run `gh auth login`, and rerun this script.'
}

gh auth status | Out-Null
if ($LASTEXITCODE -ne 0) {
    throw 'GitHub CLI is not authenticated. Run `gh auth login` first.'
}

if (-not (Test-Path '.git')) {
    git init
    if ($LASTEXITCODE -ne 0) { throw 'git init failed.' }
}

git branch -M main
if ($LASTEXITCODE -ne 0) { throw 'Could not set the main branch.' }

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

$existingOrigin = git remote get-url origin 2>$null
if ($LASTEXITCODE -eq 0) {
    throw "An origin remote already exists: $existingOrigin. Use setup-github.ps1 if you want to connect to an existing repository."
}

$visibilityFlag = if ($Visibility -eq 'public') { '--public' } else { '--private' }

Write-Host "Creating $Visibility GitHub repository '$RepoName' and pushing main..." -ForegroundColor Cyan
& gh repo create $RepoName $visibilityFlag --source . --remote origin --push
if ($LASTEXITCODE -ne 0) { throw 'GitHub repository creation or push failed.' }

Write-Host 'Repository created and pushed successfully.' -ForegroundColor Green
Write-Host 'Next: invite your teammates from the repository Settings / Collaborators page.' -ForegroundColor Green
