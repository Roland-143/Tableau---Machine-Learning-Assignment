# Member 2 Presentation: Long-Term Growth Analysis

## Slide 1 — Which States Grew Fastest?

**Recommended chart:** Packed Bubble Chart — 10-Year Real GDP Growth by State, 2016–2025

### Key Findings

- Washington had the highest proportional Real GDP growth among the 16 selected states at **44.41%**.
- Texas followed at **42.89%**, with Arizona close behind at **41.53%**.
- Pennsylvania had the lowest 10-year proportional growth at approximately **9.54%**.
- Several Western and Southern states appear among the larger bubbles, showing stronger long-term proportional growth within the selected sample.
- A larger economy does not necessarily mean a faster-growing economy.

### What the Visualization Represents

- Each bubble represents one state.
- Bubble size represents the state's total percentage growth in Real GDP from 2016 to 2025.
- Bubble color represents the state's Census region.
- Growth is measured relative to each state's own 2016 starting GDP.

### Speaker Notes

This visualization compares how much each state's Real GDP grew proportionally
between 2016 and 2025. Rather than comparing the absolute size of the states'
economies, we are comparing how much each economy increased relative to where
it started in 2016.

Washington had the highest proportional growth among the selected states,
increasing approximately 44.41 percent over the period. Texas followed at
42.89 percent and Arizona at 41.53 percent. At the other end, Pennsylvania
increased approximately 9.54 percent.

This is important because economic size and economic growth are two different
ideas. A state can have a very large economy but still grow at a slower
percentage rate than a smaller state. For example, California remains one of
the largest economies in the dataset, but its proportional growth over the
period was lower than Washington, Texas, and Arizona.

This chart also serves a different purpose from the project's 2016–2025 line
chart. The line chart displays the actual Real GDP level for every year and
shows the path each state's economy followed over time. This packed bubble
chart instead reduces the entire period to one long-term percentage-growth
measure for each state.

So the line chart answers:

"How did each state's Real GDP change year by year?"

while this visualization answers:

"Which states experienced the greatest proportional growth from the beginning
to the end of the decade?"

The bubble sizes make those long-term differences easy to compare, while the
regional colors provide additional context. These results are descriptive and
do not by themselves explain why one state's economy grew faster than another.

---

## Slide 2 — How Are Annual Growth Rates Distributed?

**Recommended chart:** Histogram — Distribution of Annual Real GDP Growth, 2017–2025

### Key Findings

- The most common annual Real GDP growth rates fall between approximately **1% and 4%**.
- The **2%–3%** range contains the highest number of state-year observations.
- Negative annual growth occurs much less often than positive growth, while very high growth rates are also relatively uncommon.

### Why the Analysis Starts in 2017

This visualization begins in 2017 instead of 2016 because year-over-year growth requires a previous year's GDP value.

To calculate 2016 growth, the analysis would need 2015 Real GDP data. Since the project dataset begins in 2016, there is no earlier observation available for comparison.

Therefore, the first valid year-over-year growth calculation is:

2017 GDP compared with 2016 GDP.

### Calculation

Year-over-year growth is calculated as:

(Current Year Real GDP - Previous Year Real GDP)
------------------------------------------------ × 100
              Previous Year Real GDP

For example, if a state's Real GDP increased from 100 in one year to 103 in the next year, its year-over-year growth rate would be 3%.

The histogram groups these annual growth rates into one-percentage-point bins. Each bar shows how many **state-year observations** fall within that growth range.

Because the analysis contains 16 states and 9 yearly growth periods from 2017 through 2025, the histogram summarizes:

16 × 9 = 144 state-year growth observations.

### Speaker Notes

This visualization looks at annual growth differently from the first slide.

The packed bubble chart on Slide 1 summarizes each state's total proportional growth from 2016 to 2025 using one value per state. It answers the question, "Which states grew the most over the full period?"

This histogram instead looks at every year-over-year change for every state. Rather than giving one long-term value per state, it gives us 144 separate annual growth observations and shows how frequently different growth rates occurred.

We begin in 2017 because a year-over-year calculation always needs a previous year for comparison. Since our dataset starts in 2016, there is no 2015 GDP value available to calculate a 2016 growth rate.

The distribution shows that most annual growth observations are concentrated around roughly 1 to 4 percent, with the 2 to 3 percent range appearing most frequently. Negative growth rates do occur, but they are much less common than positive growth rates. Very high annual growth rates are also relatively rare.

So Slide 1 focuses on total long-term growth by state, while Slide 2 focuses on the distribution and frequency of annual growth behavior across all states and years.

---

## Slide 3 — Which States Added the Most Real GDP?

**Recommended chart:** Gantt / Range Chart — Absolute Real GDP Change, 2016–2025

### Key Findings

- California added approximately **$805.63 billion** in Real GDP, the largest absolute increase among the selected states.
- Texas followed with approximately **$700.70 billion**, while Florida added about **$397.67 billion**.
- Washington had the highest proportional growth in Visualization 1, but added about **$220.15 billion** in absolute Real GDP.
- This demonstrates that the state with the fastest percentage growth is not necessarily the state that added the greatest amount of economic output.

### What the Visualization Represents

Each Gantt bar represents the change in a state's Real GDP between 2016 and 2025.

- The **left edge** of the bar represents the state's 2016 Real GDP.
- The **right edge** represents its approximate 2025 Real GDP.
- The **length of the bar** represents the absolute amount of Real GDP added during the period.
- Color represents Census region.

Absolute change is calculated as:

2025 Real GDP - 2016 Real GDP

### Speaker Notes

This visualization asks a different question from the packed bubble chart on Slide 1.

Slide 1 measured proportional growth. That calculation divides the amount of
growth by the state's 2016 starting GDP:

(2025 GDP - 2016 GDP) / 2016 GDP × 100

Dividing by the starting value normalizes the comparison. This allows a smaller
economy and a larger economy to be compared based on how much they grew relative
to their own starting positions.

This Gantt chart does not normalize by the starting value. It measures the raw
amount of additional Real GDP produced between 2016 and 2025:

2025 GDP - 2016 GDP

Because of that, large economies can have an advantage in this visualization.
For example, California began the period with a much larger economy than
Washington. California grew by a lower percentage than Washington, but because
its starting economic base was much larger, California still added about
$805.63 billion in Real GDP compared with Washington's approximately
$220.15 billion.

The Gantt format helps show both pieces of information. The horizontal position
shows where each state's economy started in 2016, while the length of the bar
shows how much additional Real GDP was added by 2025.

Therefore, these first and third visualizations should not be interpreted as
competing rankings. They measure two different concepts:

Slide 1 asks:
"How much did each state's economy grow relative to where it started?"

Slide 3 asks:
"How much additional Real GDP did each state actually add?"

This distinction explains why Washington can rank first in proportional growth
while California ranks first in absolute growth.

The labels are shown in billions of chained 2017 dollars for readability.
The original dataset reports Real GDP in millions of chained 2017 dollars, so
the absolute-change values were divided by 1,000 when displayed as labels.
Using chained 2017 dollars means the comparison reflects changes in real
economic output rather than simply changes caused by inflation.

---

## Slide 4 — Which Regions Contributed Most to Growth?

**Recommended chart:** Pie Chart — Regional Share of Absolute Real GDP Growth Among Selected States, 2016–2025

### Key Findings

- The **South contributed the largest share** of the combined absolute Real GDP increase at approximately **38.55%**.
- The **West followed closely at 34.99%**.
- Together, the South and West accounted for approximately **73.54%** of the total Real GDP added by the 16 selected states.
- The Northeast contributed **16.27%**, while the Midwest contributed **10.20%**.

### What the Visualization Represents

This pie chart takes the absolute GDP increases calculated in Visualization 3 and groups them by Census region.

For each state:

Absolute Growth = 2025 Real GDP - 2016 Real GDP

The four state-level increases within each region are then added together.

Each region's percentage is:

Regional Absolute GDP Increase
----------------------------------------- × 100
Combined Increase Across All 16 States

Because the pie chart represents parts of one combined total, all four regional shares add to approximately 100%.

### Speaker Notes

This final visualization moves the analysis from individual states to a regional
part-to-whole comparison.

In Visualization 3, we compared the amount of Real GDP added by individual
states. Here, we take those same absolute increases and combine the four states
belonging to each region.

The South contributed the largest share of the combined increase at about
38.55 percent. The West was close behind at 34.99 percent. Together, those two
regions account for roughly 73.54 percent of all additional Real GDP produced
by the 16 states in our sample.

It is important to clarify what these percentages mean. The South's 38.55
percent does NOT mean that the South's economy grew by 38.55 percent.

Instead, it means that when we add together all of the absolute Real GDP growth
across our 16 selected states, the four Southern states account for 38.55
percent of that combined increase.

This also differs from Visualization 1. The first visualization measured each
state's proportional growth relative to its own starting point. This pie chart
uses absolute growth and then aggregates those dollar-equivalent increases by
region.

It also differs from Visualization 3 because Visualization 3 preserves the
individual states. This chart sacrifices that state-level detail in order to
answer a broader question: which regions account for the largest portions of
the total increase?

The South's large share is influenced particularly by Texas and Florida, while
the West's share is strongly influenced by California and Washington.

Finally, these results apply only to the four selected states in each region.
They should not be interpreted as the shares for every state in the complete
U.S. Census regions.