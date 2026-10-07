# Member 2 — Long-Term Growth Analysis

## Scope and Method

This section examines long-term Real GDP growth across the 16 selected U.S.
states from 2016 through 2025. While other visualizations in the project
focus on the absolute size of state economies or short-term changes surrounding
the 2020 pandemic disruption, this section focuses primarily on how much each
state's economy grew over the full study period.

Real GDP is measured in millions of chained 2017 dollars. Using Real GDP rather
than nominal GDP allows comparisons across years without treating general price
increases as increases in actual economic output.

Two related but different concepts are important throughout this analysis:
GDP level and GDP growth. GDP level represents the total amount of real economic
output produced by a state at a particular point in time. GDP growth measures
how much that output increased or decreased relative to an earlier value.

For the long-term comparison, proportional growth between 2016 and 2025 is
calculated as:

(2025 Real GDP - 2016 Real GDP) / 2016 Real GDP × 100

This calculation makes states of different economic sizes easier to compare.
A state with a smaller economy can therefore have a higher proportional growth
rate than a state with a much larger economy.

---

## Visualization 1 — 10-Year Real GDP Growth by State

**Type:** Packed Bubble Chart

### Question

Which of the selected states experienced the greatest proportional increase in
Real GDP between 2016 and 2025?

### Calculation

The visualization uses each state's total percentage growth over the study
period:

(2025 Real GDP - 2016 Real GDP) / 2016 Real GDP × 100

Each bubble represents one state. The size of the bubble represents the state's
2016–2025 Real GDP growth percentage, while color identifies the Census region
associated with the state.

### Key Finding

Washington experienced the highest proportional Real GDP growth among the
16 selected states, increasing approximately **44.41%** between 2016 and 2025.
Texas followed at approximately **42.89%**, while Arizona increased
approximately **41.53%**.

At the opposite end of the comparison, Pennsylvania experienced the lowest
proportional increase among the selected states at approximately **9.54%**.

The results demonstrate that the states with the largest economies are not
necessarily the states with the highest rates of long-term growth.

### Interpretation

The packed bubble chart emphasizes relative economic expansion rather than
economic size. Washington's large bubble does not mean that Washington produced
the greatest amount of Real GDP in 2025. Instead, it indicates that Washington's
2025 Real GDP was substantially larger relative to its own 2016 starting level.

This distinction is important when comparing states such as California and
Washington. California remains a substantially larger economy in absolute
Real GDP, but its proportional increase over the study period was lower than
Washington's. Therefore, ranking states by economic size and ranking states by
growth rate can produce very different results.

The visualization also provides regional context through color. Several of the
strongest proportional growth values occur among selected Western and Southern
states. However, the sample contains only four states from each Census region,
so these results should not be interpreted as complete measurements of regional
economic performance.

### Difference from the 2016–2025 Line Chart

This visualization uses the same general 2016–2025 study period as the
project's multi-line Real GDP chart, but the two visualizations answer different
questions.

The line chart preserves each annual GDP observation from 2016 through 2025.
Its purpose is to display the year-by-year trajectory of each state's Real GDP,
including changes in economic level, periods of expansion, and temporary
declines.

The packed bubble chart instead reduces the beginning and ending values into a
single proportional-growth measurement for each state. Intermediate yearly
values do not determine the size of the bubble.

Therefore:

- The **line chart** answers: "How did each state's Real GDP change over time?"
- The **packed bubble chart** answers: "Which states grew the most relative to
  their 2016 starting point by 2025?"

Using both perspectives prevents economic size from being confused with
economic growth. A state may remain one of the largest economies throughout
the decade without having the highest proportional growth rate.

### Significance

The main finding is that long-term economic performance depends on the measure
being used. Looking only at total GDP would emphasize the largest state
economies, while proportional growth identifies states whose economic output
expanded the most relative to their starting positions.

The packed bubble chart therefore complements the project's economic-size
visualizations by providing a direct comparison of long-term growth rather than
another comparison of absolute GDP levels.

## Visualization 2 — Annual Growth Distribution

**Type:** Histogram

### Question

How are annual year-over-year Real GDP growth rates distributed across the 16 selected states from 2017 through 2025?

### Calculation

Year-over-year growth measures how much a state's Real GDP changed relative to the previous year:

(Current Year Real GDP - Previous Year Real GDP)
------------------------------------------------ × 100
              Previous Year Real GDP

The analysis begins in 2017 because the dataset starts in 2016. A 2016 year-over-year growth rate would require 2015 Real GDP data, which is outside the study period.

For each of the 16 states, growth is calculated for the nine yearly transitions from 2016→2017 through 2024→2025. This produces:

16 states × 9 annual growth observations = 144 state-year observations.

The histogram groups these 144 growth values into one-percentage-point bins. Each bar therefore represents the number of state-year observations whose year-over-year growth rate falls within a particular interval.

### Key Finding

The distribution is concentrated primarily around positive annual growth rates. The largest number of observations falls in the approximately **2%–3%** growth range, while many additional observations are concentrated between roughly **1% and 4%**.

Negative annual growth observations occur less frequently than positive ones, and very high annual growth rates are also relatively uncommon. This suggests that moderate positive growth was the most typical annual outcome among the selected states during the study period.

### Interpretation

This histogram provides a different perspective from the 10-year packed bubble visualization.

The packed bubble chart summarizes the entire 2016–2025 period into one proportional growth value for each state. It is useful for comparing which states experienced the greatest long-term expansion.

The histogram instead examines short-term annual behavior. Every state contributes multiple observations because each year-over-year change is treated separately. As a result, the histogram does not identify which individual state grew the most. Instead, it shows which annual growth rates were most common across the full sample.

The concentration of observations around modest positive growth indicates that most state-year changes were neither severe contractions nor exceptionally rapid expansions. Negative-growth bins represent periods in which Real GDP declined from the previous year, while the relatively small number of very high positive-growth observations represent unusually strong annual increases.

### Difference from Visualization 1

Visualization 1 asks:

"Which states grew the most proportionally between 2016 and 2025?"

Visualization 2 asks:

"What annual growth rates occurred most frequently across all selected states and years?"

The first visualization compares states using one long-term measure per state. The histogram instead summarizes the frequency distribution of 144 annual state-year growth observations.

### Significance

The histogram adds context that a long-term growth measure cannot provide on its own. Two states can end the decade with similar total growth while having very different year-to-year patterns. One may have experienced steady moderate increases, while another may have experienced sharp declines followed by strong recoveries.

By examining the distribution of annual growth rates, this visualization helps describe what a typical year of Real GDP growth looked like across the selected states and highlights the difference between common annual behavior and unusual economic changes.

---

## Visualization 3 — Absolute GDP Change

**Type:** Gantt / Range Chart

### Question

Which selected states added the greatest amount of Real GDP between 2016 and 2025?

### Calculation

Absolute Real GDP change is calculated as:

2025 Real GDP - 2016 Real GDP

Unlike proportional growth, this calculation does not divide by the state's starting GDP. It therefore measures the actual amount of additional real economic output added over the study period.

The source dataset reports Real GDP in millions of chained 2017 dollars. For readability, the labels in the visualization convert the absolute-change values from millions to billions by dividing by 1,000.

### Key Finding

California experienced the largest absolute increase in Real GDP among the selected states, adding approximately **$805.63 billion** in chained 2017 dollars between 2016 and 2025.

Texas followed with an increase of approximately **$700.70 billion**, while Florida added approximately **$397.67 billion** and New York added approximately **$300.28 billion**.

At the lower end of the selected states, Pennsylvania added approximately **$71.03 billion**.

### Interpretation

This visualization measures a different form of economic growth from the packed bubble chart in Visualization 1.

Visualization 1 measures proportional growth by dividing each state's increase by its 2016 starting GDP. This makes states with very different economic sizes more comparable because growth is measured relative to each state's own starting point.

Visualization 3 instead measures the raw amount of Real GDP added. It does not normalize for starting size. As a result, states that began the period with larger economies can add a greater absolute amount of economic output even if their percentage growth rate is lower.

California and Washington illustrate this distinction clearly. Washington had the highest proportional growth rate among the selected states, but California added substantially more Real GDP in absolute terms.

The Gantt chart represents both the starting point and the amount of change. The left edge of each bar indicates the state's 2016 Real GDP, while the length of the bar represents the additional Real GDP added by 2025.

### Difference from Visualization 1

Visualization 1 asks:

"How much did each state's economy grow relative to its 2016 starting point?"

Visualization 3 asks:

"How much additional Real GDP did each state add in absolute terms?"

Therefore, a state can rank highly in one visualization and lower in the other. The two measures describe different aspects of long-term economic performance.

### Significance

Using both proportional and absolute growth prevents one measure from dominating the interpretation of economic performance.

Percentage growth is useful for comparing relative expansion across states of different sizes, while absolute growth shows which states contributed the greatest amount of additional economic output.

Together, the two visualizations demonstrate why "fastest growing" and "largest increase" are not equivalent concepts.

---

## Visualization 4 — Regional Share of GDP Growth

**Type:** Pie Chart

### Question

What share of the combined absolute Real GDP increase among the 16 selected states came from each Census region between 2016 and 2025?

### Calculation

First, the absolute Real GDP increase is calculated for every state:

2025 Real GDP - 2016 Real GDP

The state-level increases are then summed within each region:

Regional Absolute Growth =
Sum of absolute GDP change for the four selected states in that region

Finally, each region's share of the combined increase is calculated as:

Regional Absolute Growth
-------------------------------- × 100
Total Absolute Growth of All 16 States

The four regional shares therefore represent portions of the same combined total and sum to approximately 100%.

### Key Finding

Among the 16 selected states, the **South contributed the largest share of total absolute Real GDP growth**, accounting for approximately **38.55%** of the combined increase from 2016 to 2025.

The **West followed at approximately 34.99%**, while the **Northeast accounted for about 16.27%** and the **Midwest approximately 10.20%**.

In absolute terms, the selected states added approximately:

- South: **$1.403 trillion**
- West: **$1.273 trillion**
- Northeast: **$592.15 billion**
- Midwest: **$371.22 billion**

### Interpretation

This visualization shifts the analysis from individual states to a regional part-to-whole comparison.

The pie chart does not show which region had the highest percentage growth rate. Instead, it shows how much each region contributed to the total amount of Real GDP added by all 16 selected states.

The South's large share is influenced strongly by states such as Texas and Florida, both of which experienced large absolute increases. The West also accounts for a substantial share, particularly because of California's large absolute increase and Washington's strong growth.

The Northeast and Midwest contribute smaller shares of the combined increase within this selected-state sample.

Because the project includes only four states from each Census region, these values represent the contribution of the selected states and should not be interpreted as the total economic growth of the complete Census regions.

### Difference from Visualization 3

Visualization 3 compares absolute GDP growth at the individual-state level.

Visualization 4 aggregates those same state-level changes into four regional totals and asks a part-to-whole question:

"What percentage of the combined Real GDP increase came from each region?"

The Gantt chart is therefore stronger for comparing individual states, while the pie chart is stronger for showing how the total increase is distributed across a small number of regional categories.

### Significance

The regional-share view demonstrates that long-term economic expansion in the selected sample was not distributed evenly across regions.

The South and West together account for roughly three-quarters of the combined absolute increase among the selected states. This provides a broader regional perspective that complements the state-level comparisons in the earlier visualizations.

---

## Visualization 4 — Regional Share of GDP Growth
**Type:** Pie Chart

### Question
...

### Calculation
...

### Key Finding
...

### Interpretation
...

---

## Overall Growth Findings
Summarize what all four visualizations collectively tell us.

## Relationship to Other Team Visualizations
Explain how Member 1 focuses on economic size,
Member 2 focuses on long-term growth,
and Member 3 focuses on pandemic/regional changes.