# Member 3 Tableau Build Guide: Heat Map, Box Plot, Scatter Plot, Bump Chart

Data: `data/processed/member3_tableau_ready_data.csv` (160 rows = 16 states × 2016–2025; BEA Real GDP via FRED, millions of chained 2017 dollars; `Region` reused from `data/documentation/STATES.csv`).
Columns: `State, State_Abbreviation, Region, Year, Real_GDP, YoY_Growth, GDP_Rank, Pandemic_2020_Growth, Recovery_2021_Growth`.
Derived with pandas from `state_real_gdp_tableau_ready_2016_2025_VERIFIED.csv`; `YoY_Growth` matches the team's `YoY_Growth_Pct` (max difference 0.00005) and `GDP_Rank` matches `State_Rank` in all 160 rows. 2016 YoY is blank by design.
Build in a separate workbook (e.g. `tableau/workbooks/Member3_Regional_Pandemic_Heatmap_Box_Scatter_Bump.twbx`); do not edit teammates' `.twbx` files. Connect: Data > Connect to Text File. Regions cover only "selected states within each region".

## Calculated fields
- **YoY Growth % (table calc, optional; the CSV column is safer when filtering to one year):**
  `(SUM([Real_GDP]) - LOOKUP(SUM([Real_GDP]), -1)) / LOOKUP(SUM([Real_GDP]), -1) * 100` — Compute using: Year, restart every State.
- **GDP Rank (table calc, optional):** `RANK(SUM([Real_GDP]), 'desc')` — Compute using: State (restarts per Year). Rank 1 = largest GDP. (`GDP_Rank` in the CSV equals this.)
- **2020 Growth (scatter):** `IF [Year]=2020 THEN [YoY_Growth] END` and **2021 Growth:** `IF [Year]=2021 THEN [YoY_Growth] END`. Or just use `Pandemic_2020_Growth` / `Recovery_2021_Growth` (one value per state, repeated each year; AVG gives the same value).
- **Pandemic % change 2019→2020:** `Pandemic_2020_Growth` = (GDP2020 − GDP2019)/GDP2019×100 (equals 2020 `YoY_Growth`). **Recovery 2020→2021:** `Recovery_2021_Growth`.
These were precalculated because year filters break LOOKUP-based table calcs.

## 1. Heat Map — "Year-over-Year Real GDP Growth by State, 2017–2025"
1. Columns: `Year` (discrete: right-click > Discrete). Rows: `Region`, then `State`.
2. Filter: Year ≥ 2017 (2016 is Null).
3. Marks: Square. Drag `YoY_Growth` (Measure: Average) to Color and to Label (format 0.0).
4. Color: diverging palette (Red-Blue or Orange-Blue Diverging), Edit Colors > Use Full Color Range off, Center = 0, so negatives are red and the 2020 column stands out.
5. Sort State within Region by 2020 growth (optional). Increase square size; title as above; format color legend as `0.0"%"`.

## 2. Box-and-Whisker Plot — "Distribution of Real GDP Growth by Region During 2020"
1. Filter: `Year` = 2020 only.
2. Columns: `Region`. Rows: `YoY_Growth` (use Dimension-style by placing `State` on Detail first, or use Pandemic_2020_Growth).
3. Marks > Detail: `State`. Color: `Region`. Mark type: Circle.
4. Analytics pane: drag **Box Plot** onto the view (Cell). Edit: whiskers "Extend to 1.5 × IQR" (with 4 states per region, treat whiskers cautiously).
5. Label State (optional) and add axis title "2020 YoY Real GDP Growth (%)". Add a zero reference line.

## 3. Scatter Plot — "2020 Economic Decline vs. 2021 GDP Recovery by State"
1. Filter: `Year` = 2020 (keeps one row per state; `Recovery_2021_Growth` is already on that row).
2. Columns: `Pandemic_2020_Growth` (Average). Rows: `Recovery_2021_Growth` (Average).
3. Detail: `State`; Color: `Region`; Label: `State_Abbreviation`. Marks: Circle. Confirm 16 marks.
4. Analytics > Trend Line (Linear). Hover the line for R-squared/p-value; only describe it as significant if Tableau reports it, and n=16.
5. Add a vertical zero reference line on the x axis.

## 4. Bump Chart — "Changes in State Real GDP Rankings Before and After the Pandemic"
1. Filter: `Year` in 2019, 2020, 2021, 2025 (Filter > Select from list). Year to Columns as Discrete.
2. Rows: `GDP_Rank` (Dimension, or Average as measure). Right-click axis > Edit Axis > Reversed so rank 1 is on top; set fixed range 1–16.
3. Detail: `State`; Color: `State` (or highlight movers: Indiana, Arizona, Washington, New Jersey). Marks: Line, plus a Circle layer (dual axis) and Label `State_Abbreviation`.
4. Note the x axis skips 2022–2024 (discrete years), so say "2019, 2020, 2021 and 2025".
5. If using the table-calc rank instead of the CSV field, do not filter Year in a way that removes the other states.

## Demonstration checklist
- Pivot of Year × State in a heat map and diverging color centered at 0.
- Show the Year=2020 filter and the Box Plot analytics option.
- Explain why scatter keeps one point per state (Detail = State).
- Reverse the rank axis and explain rank 1 = highest Real GDP.
- Explain YoY: `(GDP_t − GDP_t-1)/GDP_t-1 × 100` computed within each state.
