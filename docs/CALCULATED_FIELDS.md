# Tableau Calculated Fields

Store the exact formulas actually used in Tableau here so the team can review and reproduce them.

## Year-over-Year Growth %

Concept:

```text
(Current GDP - Previous GDP) / Previous GDP
```

Tableau may implement this as a table calculation such as **Percent Difference From Previous** depending on workbook design.

## 10-Year Growth %

Concept:

```text
(Ending GDP - Beginning GDP) / Beginning GDP
```

For the recommended period, compare 2025 with 2016.

## CAGR %

There are nine compounding intervals from 2016 to 2025:

```text
(2025 GDP / 2016 GDP)^(1/9) - 1
```

## State Rank

Rank states by Real GDP within each year. Ensure the table calculation is computed using State and restarted for each Year.

## Formula Verification Checklist

- [ ] Percent fields formatted consistently.
- [ ] Table-calculation direction verified.
- [ ] Partitioning/restart behavior checked.
- [ ] 2016 and 2025 values independently spot-checked.
- [ ] Missing first-year YoY growth handled intentionally.
