# Inflation-Unemployment Dynamics during the 2008 Global Financial Crisis

## Comparative Phillips Curve Analysis: United States vs Germany

This project examines the relationship between inflation and unemployment in the **United States and Germany** around the 2008 Global Financial Crisis. The analysis uses quarterly data and compares the Phillips Curve relationship across the two economies.

## Study Period

- **Quarterly data**
- **2005–2011**
- **25 observations for each country**

## Research Objective

The study aims to:

1. Examine the evolution of inflation and unemployment in the United States and Germany during the 2008 Global Financial Crisis.
2. Compare the inflation-unemployment relationship between the two countries.
3. Examine whether the traditional Phillips Curve relationship is evident during the period.
4. Discuss the implications of the findings for macroeconomic policy.

## Variables

| Variable | Description |
|---|---|
| Inflation | Quarterly percentage change in the Consumer Price Index (CPI) |
| Unemployment | Unemployment rate as a percentage of the labor force |

The study uses macroeconomic data from sources including **FRED, OECD, Eurostat, and the U.S. Bureau of Labor Statistics**, as described in the project materials.

## Methodology

The analysis combines:

- Time-series examination of inflation and unemployment.
- Scatter plots of inflation against unemployment.
- Fitted Phillips Curve relationships.
- Regression analysis for the United States and Germany.

The basic regression specification is:

**Inflationₜ = α + β(Unemploymentₜ) + εₜ**

Where:

- **Inflationₜ** = inflation rate
- **Unemploymentₜ** = unemployment rate
- **α** = constant
- **β** = coefficient on unemployment
- **εₜ** = error term

A negative value of β is consistent with the traditional inverse Phillips Curve relationship.

## Regression Results

### United States

- **Coefficient on unemployment:** -0.1387741
- **p-value:** 0.634
- **R²:** 0.0100
- **Observations:** 25

The estimated coefficient is negative, but the regression has very low explanatory power and the coefficient is not statistically significant at conventional levels.

### Germany

- **Coefficient on unemployment:** -0.2934116
- **p-value:** 0.240
- **R²:** 0.0596
- **Observations:** 25

The estimated coefficient is negative, while the regression also has low explanatory power and the coefficient is not statistically significant at conventional levels.

## Repository Structure

```text
Inflation-Unemployment-Phillips-Curve/
│
├── README.md
├── SOURCE_NOTE.txt
│
├── code/
│   └── Phillips_Curve_Stata.do
│
├── graphs/
│   ├── 01_phillips_curve_US_2005_2011.png
│   └── 02_phillips_curve_Germany_2005_2011.png
│
└── outputs/
    ├── 01_US_regression_output.png
    └── 02_Germany_regression_output.png
```

## Graphs

The `graphs/` folder contains the Phillips Curve visualizations for:

- United States
- Germany

The graphs show inflation against unemployment with fitted relationships.

## Outputs

The `outputs/` folder contains the regression output for:

- United States
- Germany

## Data

The project refers to a raw Excel dataset named:

`PHILLIPS CURVE DATA.xlsx`


## Conclusion

The analysis finds negative estimated relationships between inflation and unemployment for both the United States and Germany during the study period. However, the low R² values and statistically insignificant coefficients indicate limited explanatory power for the simple linear regression models used in the analysis.
