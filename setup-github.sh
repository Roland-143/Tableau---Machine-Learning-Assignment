#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -ne 1 ]; then
  echo "Usage: ./setup-github.sh https://github.com/YOUR-USERNAME/YOUR-REPO.git"
  exit 1
fi

REPO_URL="$1"

command -v git >/dev/null 2>&1 || { echo "Git is required but was not found."; exit 1; }

[ -d .git ] || git init
git branch -M main

if git remote get-url origin >/dev/null 2>&1; then
  git remote set-url origin "$REPO_URL"
else
  git remote add origin "$REPO_URL"
fi

folders=(
  data/raw
  tableau/workbooks
  tableau/dashboards
  tableau/exports
  report/figures
  report/sections
  presentation/figures
  presentation/slides
  scripts
)
for folder in "${folders[@]}"; do
  mkdir -p "$folder"
  touch "$folder/.gitkeep"
done

git add .
if ! git rev-parse --verify HEAD >/dev/null 2>&1; then
  git commit -m "chore: initialize CS469 GDP visualization project"
elif [ -n "$(git status --porcelain)" ]; then
  git commit -m "chore: add CS469 project scaffold"
fi

git push -u origin main

echo "Done. The repository is initialized and pushed to $REPO_URL"
