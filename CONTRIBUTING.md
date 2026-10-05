# Contributing Guide

This repository is the shared workspace for the CS 46900 U.S. State Real GDP Tableau project.

## Before Starting Work

1. Pull the latest `main` branch.
2. Check existing GitHub Issues.
3. Assign yourself to the relevant issue or create a new one.
4. Create a branch for the task.

```bash
git checkout main
git pull
git checkout -b feature/short-task-name
```

## Commit Style

Use short, descriptive commits:

```text
data: add cleaned 2016-2025 GDP dataset
viz: add regional heat map
report: draft methodology section
slides: revise key findings slide
fix: correct CAGR calculation
```

## Pull Requests

A pull request should:

- describe what changed;
- identify the related issue;
- include screenshots for Tableau/dashboard changes when useful;
- identify any data or calculation changes;
- be reviewed by at least one teammate before merge.

## Tableau Collaboration

Tableau packaged workbooks (`.twbx`) can create difficult merge conflicts because they are binary packages. To reduce conflicts:

- assign ownership of individual workbooks/sheets;
- avoid having two people edit the same `.twbx` simultaneously;
- export important charts/screenshots after meaningful milestones;
- consider separate workbooks by analysis area, then combine during final integration;
- record calculated-field formulas in `docs/CALCULATED_FIELDS.md` so they are reviewable outside Tableau.

## Data Rules

- Files in `data/raw/` are source snapshots and should not be edited.
- Clean/derived data belongs in `data/processed/`.
- If cleaning logic changes, document the change in the pull request.
- Never silently change units, time frequency, or Real vs. nominal GDP.

## Report and Presentation

- Draft report content in `report/sections/` before final integration.
- Put charts exported for the report in `report/figures/`.
- Put charts exported for the presentation in `presentation/figures/`.
- Put final professor-ready files only in `final_submission/`.

## Definition of Done

A task is complete when:

- the file/work is in the correct folder;
- calculations and labels are checked;
- the relevant issue is updated;
- another team member can understand the work;
- the change is merged into `main`.
