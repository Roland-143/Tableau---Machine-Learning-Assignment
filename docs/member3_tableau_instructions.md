# Member 3 Tableau Build Guide

## Data sources and scope

Use the two Member 3 extracts:

- `data/processed/member3_regional_pandemic_tableau_ready.csv` — one row per selected state and year, 2016–2025. Includes `Region`, `YoY_Growth_Pct`, and `Study_Period`.
- `data/processed/member3_selected_state_regional_aggregates.csv` — one row per region and year. `Selected_States_Real_GDP_Millions` is the sum of the four selected states in that region, not total Census-region GDP. `Regional_YoY_Growth_Pct` is calculated from consecutive annual regional sums.

Both extracts use annual Real GDP in millions of chained 2017 dollars. The state extract retains the project’s original 16 states; it does not fill or add observations. Connect to each CSV separately in Tableau Desktop with **Connect → To a File → Text File**.

The existing `.twbx` belongs to Member 1. To avoid editing a teammate-owned binary workbook, build these sheets in a separate Member 3 workbook, for example `tableau/workbooks/Member3_Regional_Pandemic_Analysis.twbx`, and combine workbooks during final integration.

## Calculated fields

The extracts already contain `YoY_Growth_Pct` for state rows and `Regional_YoY_Growth_Pct` for regional aggregates. Prefer these validated source fields in the specified views. To demonstrate the state calculation in Tableau, create **YoY GDP Growth % (Table Calc)**:

```text
IF ISNULL(LOOKUP(SUM([Real_GDP_Millions]), -1)) THEN
    NULL
ELSE
    100 * (
        SUM([Real_GDP_Millions])
        - LOOKUP(SUM([Real_GDP_Millions]), -1)
    ) / ABS(LOOKUP(SUM([Real_GDP_Millions]), -1))
END
```

Set **Compute Using** to `Year`, and partition/restart by `State`. Keep years in ascending order. The first available year for each state returns Null because 2015 is outside this dataset. If used on a view filtered to one year, confirm the prior year is still available to the table calculation; using the supplied `YoY_Growth_Pct` avoids that filtering issue.

Optional filter-friendly fields:

```text
Pandemic Shock Growth %:
IF [Year] = 2020 THEN [YoY_Growth_Pct] END

Initial Recovery Growth %:
IF [Year] = 2021 THEN [YoY_Growth_Pct] END
```

## Worksheets

### 1. Selected-States Regional GDP Trend

1. Use the regional aggregate extract.
2. Place `Year` on Columns as a continuous year.
3. Place `Selected_States_Real_GDP_Millions` on Rows as `SUM`.
4. Set Marks to **Line** and place `Region` on Color.
5. Title: **Real GDP of Selected States by Census Region, 2016–2025**.
6. Label the vertical axis **Millions of chained 2017 dollars**. Use a clear four-color palette and identify each line at the right edge if labels remain legible.

### 2. 2020 Pandemic-Shock State Comparison

1. Use the state extract; put `State` on Rows and `YoY_Growth_Pct` on Columns.
2. Set Marks to **Bar**, put `Region` on Color, and put `YoY_Growth_Pct` on Label.
3. Filter `Year` to **2020**. Sort states ascending by growth so the greatest decline is at the top; retain the zero line and negative values.
4. Format the measure as a percentage with two decimals.
5. Title: **State Real GDP Change, 2019–2020**.

### 3. 2021 Initial-Recovery State Comparison

Duplicate the impact worksheet so axis, colors, and labels remain comparable. Change the year filter to **2021**, sort descending by growth, and title it **State Real GDP Change, 2020–2021**. Keep the same two-decimal percentage formatting.

### 4. State × Year Growth Heat Map

1. Use the state extract. Place `Region`, then `State`, on Rows; place discrete `Year` on Columns.
2. Use **Square** marks and place `YoY_Growth_Pct` on Color and Label. Use `AVG` (there is one state-year record) and format labels as percentages.
3. Keep years ascending and sort states alphabetically within region.
4. Use a diverging palette centered at zero, with negative growth in a muted warm color and positive growth in a muted cool color. Leave the 2016 cell blank rather than imputing growth.
5. Title: **Year-over-Year Real GDP Growth by Selected State**.

### 5. Regional Year-over-Year Growth

1. Use the regional aggregate extract. Put `Year` on Columns, `Regional_YoY_Growth_Pct` on Rows, set Marks to **Line**, and place `Region` on Color.
2. Format the vertical axis as a percentage and keep the zero line visible. The 2016 value is blank because there is no 2015 regional total in this project dataset.
3. Title: **Year-over-Year Growth of Combined GDP of Selected States**.
4. Describe this as a custom aggregate of selected-state GDP, not as a complete regional estimate.

## Dashboard: Regional GDP and Pandemic Analysis

Create a dashboard with a readable title and source note. Arrange the regional GDP trend across the top, the 2020 impact and 2021 recovery bars side by side in the middle, and the state-year heat map across the bottom. Use the regional growth worksheet as a companion view or a second dashboard tab if the heat map becomes too compressed.

Add `Region`, `State`, and `Year` filters where they answer the dashboard question. Apply `State` only to state-level sheets: filtering the separate regional aggregate data by state would misrepresent those precomputed totals. Apply region and year filters to the regional aggregate views, and use matching controls or dashboard filter actions across data sources rather than implying that a state filter changes regional totals. Keep filter defaults at all regions/states and all years; the pandemic/recovery comparison worksheets should retain their fixed 2020/2021 filters.

Use a restrained, consistent regional palette, descriptive tooltips with the year and units, readable labels, and minimal gridlines. Display the selected-state scope in the dashboard subtitle or source note. Check the dashboard at presentation size to ensure state names and heat-map labels remain legible.
