# CS 46900 Machine Learning & Data Mining — U.S. State Real GDP Visualization Project

**Course:** PNW Fall 2026 CS 46900-001 Machine Learning & Data Mining LEC  
**Project focus:** Tableau-based analysis of U.S. State Real GDP over a 10-year period  
**Primary source:** U.S. Bureau of Economic Analysis (BEA), with FRED as an optional secondary source

## Project Objective

Analyze and communicate how real economic output changed across a geographically balanced set of U.S. states over a 10-year period. The project uses multiple Tableau visualization approaches to compare economic size, growth, geographic patterns, regional variation, disruption, recovery, and changes in state rankings.

### Recommended research question

> How have the size, growth, regional distribution, and rankings of major U.S. state economies changed between 2016 and 2025?

## Assignment Requirements Covered

- [ ] Use U.S. State Real GDP data spanning 10 years.
- [ ] Include **at least 16 states** representing different geographic regions.
- [ ] Create **at least 12 different visualization approaches** in Tableau.
- [ ] Provide written analysis explaining observations from the charts.
- [ ] Submit a formal course project report.
- [ ] Submit a presentation.
- [ ] Record a presentation video including all contributors.
- [ ] Final submission includes:
  - [ ] Report as PDF
  - [ ] PowerPoint slides exported as PDF
  - [ ] Recorded presentation video including all contributors
- [ ] All team members understand the data, calculations, and Tableau work well enough to demonstrate their skills if asked.

## Recommended 16-State Sample

| Census Region | States |
| --- | --- |
| Northeast | New York, Pennsylvania, Massachusetts, New Jersey |
| Midwest | Illinois, Michigan, Ohio, Indiana |
| South | Texas, Florida, Georgia, North Carolina |
| West | California, Washington, Arizona, Colorado |

The sample intentionally includes four states from each major U.S. Census region to create a balanced geographic comparison.

## Recommended 10-Year Window

**2016–2025, annual Real GDP**  
Recommended units: **Millions of chained 2017 dollars**.

Do not mix nominal GDP and real GDP in the same analysis.

## Planned Visualizations

| # | Visualization | Main Question |
| ---: | --- | --- |
| 1 | Multi-line chart | How did Real GDP change over time across states? |
| 2 | Small-multiple line charts by region | Do states within regions follow similar trends? |
| 3 | Horizontal bar chart | Which states had the largest Real GDP in 2025? |
| 4 | Slope chart | How did states change from 2016 to 2025? |
| 5 | Filled U.S. map | Where are the largest state economies located? |
| 6 | State × Year heat map | Which state-year combinations show strong or weak performance? |
| 7 | 10-year percentage growth bar chart | Which states grew fastest proportionally? |
| 8 | Scatter plot | Is starting economic size associated with later growth? |
| 9 | Box plot by region | How do GDP levels vary across regions? |
| 10 | Histogram of annual growth | What does the distribution of state growth rates look like? |
| 11 | Treemap | How concentrated is combined GDP among the selected states? |
| 12 | Rank/bump chart | Which states gained or lost economic rank over time? |

See [`docs/VISUALIZATION_PLAN.md`](docs/VISUALIZATION_PLAN.md) for implementation details.

## Repository Structure

```text
.
├── .github/                    # GitHub collaboration templates and checks
├── data/
│   ├── raw/                    # Original source downloads; never manually edit
│   ├── processed/              # Cleaned Tableau-ready data
│   └── documentation/          # Data dictionary, source notes, state list
├── docs/                       # Project plan, visualization plan, team workflow
├── presentation/
│   ├── figures/                # Exported charts/images used in slides
│   └── slides/                 # PPTX working files and presentation PDF
├── report/
│   ├── figures/                # Figures exported for the report
│   └── sections/               # Drafted report sections
├── scripts/                    # Optional cleaning/validation scripts
├── tableau/
│   ├── workbooks/              # .twb/.twbx files
│   ├── dashboards/             # Dashboard exports/screenshots
│   └── exports/                # CSV/PDF/image exports from Tableau
├── video/                      # Video notes/link information; large video files ignored
├── final_submission/           # Final report PDF, slide PDF, and submission checklist
├── CONTRIBUTING.md
├── TEAM.md
└── README.md
```

## Team Workflow

1. Create an issue for each task, chart, report section, or presentation section.
2. Assign an owner and reviewer.
3. Create a feature branch from `main`.
4. Commit small, clearly labeled changes.
5. Open a pull request and connect it to the issue.
6. Have another contributor review before merging.
7. Keep `main` in a submission-ready state.

Recommended branch names:

```text
feature/data-cleaning
feature/viz-01-trends
feature/viz-07-growth
report/methodology
presentation/results
fix/tableau-filter
```

## Quick Start

**Start with [`START_HERE.md`](START_HERE.md).** If GitHub CLI is installed, the included Windows script can create the remote repository and push it automatically.

### Windows / PowerShell — Existing Remote

From the repository folder:

```powershell
.\setup-github.ps1 -RepoUrl "https://github.com/YOUR-ORG-OR-USERNAME/YOUR-REPO.git"
```

### macOS / Linux / Git Bash

```bash
chmod +x setup-github.sh
./setup-github.sh https://github.com/YOUR-ORG-OR-USERNAME/YOUR-REPO.git
```

The scripts initialize Git if needed, create the first commit if needed, set the `main` branch, add the GitHub remote, and push.

## Data Workflow

1. Download the original BEA/FRED file into `data/raw/`.
2. Do **not** overwrite or manually edit the raw source file.
3. Create the cleaned master dataset in `data/processed/`.
4. Keep one row per **State × Year**.
5. Recommended fields:

```text
State
State_Abbreviation
Region
Year
Real_GDP_Millions
YoY_Growth_Pct
Ten_Year_Growth_Pct
CAGR_Pct
State_Rank
```

6. Record data-source metadata in `data/documentation/SOURCE_NOTES.md`.
7. Connect Tableau to the processed dataset, not the raw download.

## Analysis Standard

For each visualization, use:

**Observation → Evidence → Interpretation → Significance**

Avoid only describing visible marks. Explain what the observed pattern means and how it contributes to the project question.

## Final Deliverables

Use `final_submission/` only for final, professor-ready files. See [`final_submission/SUBMISSION_CHECKLIST.md`](final_submission/SUBMISSION_CHECKLIST.md).

## Academic Responsibility

Every contributor should be able to explain:

- where the data came from;
- why Real GDP was selected;
- how the states and time span were chosen;
- how key calculated fields work;
- how at least one Tableau visualization was constructed;
- what the team's main findings mean.

