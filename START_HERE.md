# Start Here — Put This Project on GitHub

This package is ready to become your team's GitHub repository.

## Fastest Windows Option — Create the GitHub Repository Automatically

### 1. Install prerequisites once

Install:
- Git for Windows
- GitHub CLI (`gh`)

Then authenticate GitHub CLI once:

```powershell
gh auth login
```

### 2. Open PowerShell inside this extracted project folder

For example, in File Explorer open the folder, click the address bar, type `powershell`, and press Enter.

### 3. Run

```powershell
.\create-github-repo.ps1 -RepoName "cs469-state-gdp-project"
```

That script will:

1. initialize Git;
2. retain the project folder structure;
3. create the first commit using your configured Git identity;
4. create a **private GitHub repository**;
5. set `main` as the default local branch;
6. connect `origin`;
7. push the project.

Afterward, invite teammates from the repository's **Settings → Collaborators** area.

### Want the repository public instead?

```powershell
.\create-github-repo.ps1 -RepoName "cs469-state-gdp-project" -Visibility public
```

## If You Already Created an Empty GitHub Repository

Copy its HTTPS URL and run:

```powershell
.\setup-github.ps1 -RepoUrl "https://github.com/YOUR-USERNAME/YOUR-REPO.git"
```

## macOS / Linux / Git Bash

If the empty GitHub repository already exists:

```bash
chmod +x setup-github.sh
./setup-github.sh https://github.com/YOUR-USERNAME/YOUR-REPO.git
```

## First Team Tasks After Push

1. Edit `TEAM.md` with names and GitHub usernames.
2. Invite all contributors to the GitHub repository.
3. Create/assign GitHub Issues for data acquisition and the 12 visualizations.
4. Download the source GDP data into `data/raw/`.
5. Build the cleaned Tableau-ready file in `data/processed/`.
6. Start feature branches rather than editing `main` directly.

Read `README.md` for the complete project structure and `CONTRIBUTING.md` for the collaboration workflow.
