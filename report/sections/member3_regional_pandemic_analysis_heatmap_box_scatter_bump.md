# Regional and Pandemic Analysis (Heat Map, Box Plot, Scatter Plot, Bump Chart)

Data: 16 selected states (four per region), annual BEA **Real GDP** (millions of chained 2017 dollars) from FRED, 2016–2025; file `data/processed/member3_tableau_ready_data.csv`. YoY growth is computed within each state. Regions describe "selected states within each region", not complete Census regions. Findings are descriptive, not causal.

## Regional Growth Patterns (Heat Map)
**Observation.** 2020 is the only column with mostly negative growth; 2021 is the strongest year for every state.
**Evidence.** 15 of 16 states contracted in 2020 (Arizona +1.81%); all 16 grew in 2021 (3.57% Pennsylvania to 9.37% Florida). After the recovery, 2022–2025 average YoY growth was highest in Texas (5.05%) and Florida (4.12%) and lowest in Pennsylvania (1.57%) and Ohio (1.64%). Texas grew 9.18% in 2023 and California −0.21% in 2022 (the only post-2021 contraction).
**Interpretation.** Southern states (Texas, Florida) and several Western states sustained faster growth after 2021; Midwest and Northeast states generally grew more slowly.
**Why it matters.** The heat map shows timing and persistence of growth differences across states and regions in one view.

## Pandemic Impact in 2020 (Box Plot)
**Observation.** Median 2020 growth was lowest in the Midwest and the West had the widest spread.
**Evidence.** Medians: Midwest −3.11%, Northeast −2.91%, South −1.21%, West −0.74%. Range: West 3.02 percentage points (−1.21% to +1.81%), Northeast 2.72, Midwest 2.57, South 2.27. Illinois (−4.96%) and Pennsylvania (−4.10%) were the largest declines; Arizona (+1.81%) is the clear positive outlier.
**Interpretation.** Midwest and Northeast states were more affected and the West and South appeared more resilient in this sample, although four states per region is small.
**Why it matters.** Regional medians hide state-level extremes; the box plot shows both.

## Recovery in 2021 (Scatter Plot)
**Observation.** Larger 2020 declines were not followed by larger rebounds; the sample shows a weak-to-moderate positive association.
**Evidence.** The correlation between 2020 and 2021 growth across the 16 states is +0.57 (calculated descriptively; no significance test was run). Illinois had the largest 2020 contraction (−4.96%) and a 6.61% rebound; Pennsylvania had the second-largest decline (−4.10%) and the weakest recovery (3.57%). Florida had the strongest recovery (9.37%), followed by Arizona (8.70%) and Indiana (8.04%). Indiana (−2.61% then +8.04%) is an above-trend rebound.
**Interpretation.** States that fell least (Western and Southern) tended to rebound more strongly, so 2021 growth does not simply "make up" for 2020 declines. Midwest/Northeast points cluster at lower 2020 values, South/West at higher.
**Why it matters.** Resilience and rebound should be treated as separate dimensions.

## Changes in State Economic Ranking (Bump Chart)
**Observation.** Rankings were highly stable.
**Evidence.** In 2019, 2020, 2021 and 2025, the top 8 states (CA, TX, NY, FL, IL, PA, OH, GA) held ranks 1–8 unchanged. Arizona moved from 16 to 15 and Indiana from 15 to 16 in 2020, and those positions persisted through 2025. Washington moved from 10 to 9 and New Jersey from 9 to 10 between 2021 and 2025.
**Interpretation.** The pandemic changed growth rates but produced almost no change in relative rank among these 16 states; the only 2020 changes were a single swap at the bottom (Arizona/Indiana).
**Why it matters.** Large short-term growth differences did not reorder state economies much, partly because the GDP gaps between adjacent states are large relative to 2020–21 growth.

## Key Findings
1. 15 of 16 states contracted in 2020; Illinois (−4.96%) and Pennsylvania (−4.10%) fell most; Arizona grew 1.81%.
2. Midwest median 2020 growth (−3.11%) was lowest; West (−0.74%) highest, with the widest spread.
3. All states grew in 2021 (3.57%–9.37%); 2020 and 2021 growth correlate +0.57 (descriptive only).
4. Texas and Florida had the fastest 2022–2025 average growth (5.05%, 4.12%).
5. Rankings changed little: two swaps (AZ/IN in 2020; WA/NJ by 2025).
