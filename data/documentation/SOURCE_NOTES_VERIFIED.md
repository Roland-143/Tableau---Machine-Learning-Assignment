# Data Source Notes

- Primary producer: U.S. Bureau of Economic Analysis (BEA)
- Retrieval source: FRED, Federal Reserve Bank of St. Louis
- Metric: Real Gross Domestic Product: All Industry Total by state
- Frequency: Annual, not seasonally adjusted
- Units: Millions of chained 2017 dollars
- Project window: 2016–2025
- Retrieval date: 2026-10-05
- Values were verified against current FRED table-data pages after the 2026-09-30 BEA update.

## Series IDs
- Arizona: AZRGSP — https://fred.stlouisfed.org/data/AZRGSP
- California: CARGSP — https://fred.stlouisfed.org/data/CARGSP
- Colorado: CORGSP — https://fred.stlouisfed.org/data/CORGSP
- Florida: FLRGSP — https://fred.stlouisfed.org/data/FLRGSP
- Georgia: GARGSP — https://fred.stlouisfed.org/data/GARGSP
- Illinois: ILRGSP — https://fred.stlouisfed.org/data/ILRGSP
- Indiana: INRGSP — https://fred.stlouisfed.org/data/INRGSP
- Massachusetts: MARGSP — https://fred.stlouisfed.org/data/MARGSP
- Michigan: MIRGSP — https://fred.stlouisfed.org/data/MIRGSP
- New Jersey: NJRGSP — https://fred.stlouisfed.org/data/NJRGSP
- New York: NYRGSP — https://fred.stlouisfed.org/data/NYRGSP
- North Carolina: NCRGSP — https://fred.stlouisfed.org/data/NCRGSP
- Ohio: OHRGSP — https://fred.stlouisfed.org/data/OHRGSP
- Pennsylvania: PARGSP — https://fred.stlouisfed.org/data/PARGSP
- Texas: TXRGSP — https://fred.stlouisfed.org/data/TXRGSP
- Washington: WARGSP — https://fred.stlouisfed.org/data/WARGSP

## Processing
- Exactly one row per State × Year.
- 16 states × 10 years = 160 rows.
- `YoY_Growth_Pct` is blank for 2016 because 2015 is outside the selected project window.
- `Ten_Year_Growth_Pct` and `CAGR_Pct` are stored on 2025 rows only.
- CAGR uses the 9 annual intervals from the 2016 observation to the 2025 observation.
- `State_Rank` ranks the selected 16 states within each year by real GDP.
