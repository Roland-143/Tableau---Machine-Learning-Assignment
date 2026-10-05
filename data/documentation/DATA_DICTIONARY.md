# Data Dictionary

| Field | Type | Description |
| --- | --- | --- |
| `State` | String | Full U.S. state name |
| `State_Abbreviation` | String | Two-letter postal abbreviation |
| `Region` | String | Northeast, Midwest, South, or West |
| `Year` | Integer | Observation year, recommended 2016–2025 |
| `Real_GDP_Millions` | Number | Annual Real GDP in millions of chained 2017 dollars |
| `YoY_Growth_Pct` | Number | Percentage change from previous year |
| `Ten_Year_Growth_Pct` | Number | Percentage change from first to last year in the study period |
| `CAGR_Pct` | Number | Compound annual growth rate over the study period |
| `State_Rank` | Integer | Rank among selected states for a given year |

## Grain

One row should represent one **State × Year** observation.

Expected size for the recommended design:

**16 states × 10 years = 160 rows.**
