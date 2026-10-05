# Data Source Notes

## Primary Source

**U.S. Bureau of Economic Analysis (BEA)**  
Dataset/topic: GDP by State  
Recommended measure: Real GDP  
Recommended frequency: Annual  
Recommended period: 2016–2025  
Recommended units: Millions of chained 2017 dollars

Source page: https://www.bea.gov/data/gdp/gdp-state

## Optional Secondary Source

**Federal Reserve Bank of St. Louis — FRED**  
Search topic: Gross Domestic Product by State

Source page: https://fred.stlouisfed.org/

## Reproducibility Record

Complete this when data is downloaded:

- Downloaded by:
- Download date:
- Exact table/series:
- Source URL:
- File name saved in `data/raw/`:
- Frequency:
- Unit:
- Years included:
- Any filters used:
- Notes about BEA/FRED revisions:

## Data Integrity Rules

1. Preserve the downloaded source file unchanged in `data/raw/`.
2. Use Real GDP consistently throughout the main analysis.
3. Verify that all 16 states have all 10 annual observations.
4. Confirm that each State × Year pair appears only once.
5. Document any excluded rows or transformations.
