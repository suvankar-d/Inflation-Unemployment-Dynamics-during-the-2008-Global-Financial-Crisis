# Inflation-Unemployment Dynamics During the 2008 Global Financial Crisis

## Project
**Inflation-Unemployment Dynamics during the 2008 Global Financial Crisis: A Comparative Phillips Curve Analysis between the United States and Germany**

This repository contains the presentation/report outputs for the Macro project comparing the inflation-unemployment relationship in the **United States and Germany** around the 2008 Global Financial Crisis.

## Study period and data
- Quarterly observations covering approximately **2005–2011**
- The report describes **25 quarterly observations per country**
- Main variables:
  - **Inflation rate (%)**
  - **Unemployment rate (%)**
- Data sources described in the report:
  - FRED / OECD for inflation
  - Eurostat / U.S. Bureau of Labor Statistics for unemployment
- Software:
  - **Stata** for regression analysis and graphical analysis
  - **Excel** for data cleaning/basic visualization

## Research objective
The study examines whether the traditional inverse Phillips Curve relationship between unemployment and inflation remained visible during and around the 2008 Global Financial Crisis, and compares the observed dynamics in the U.S. and Germany.

## Methodology
The documented regression specification is:

`Inflation_t = α + β Unemployment_t + ε_t`

Interpretation used in the report:
- `β < 0` → inverse inflation-unemployment relationship
- `β > 0` → weakening or reversal of the traditional relationship

The methodology also describes scatter plots with fitted **quadratic** regression lines to allow for possible non-linearity.

## Main regression outputs reproduced from the supplied presentation
### United States
- Coefficient on unemployment: **-0.1387741**
- p-value: **0.634**
- R²: **0.0100**
- Observations: **25**

### Germany
- Coefficient on unemployment: **-0.2934116**
- p-value: **0.240**
- R²: **0.0596**
- Observations: **25**

The report interprets both relationships as statistically insignificant with low explanatory power.

## Repository structure

```text
Inflation-Unemployment-Phillips-Curve/
├── README.md
├── code/
│   └── Phillips_Curve_Stata.do
├── graphs/
│   ├── 01_phillips_curve_US_2005_2011.png
│   └── 02_phillips_curve_Germany_2005_2011.png
└── outputs/
    ├── 01_US_regression_output.png
    └── 02_Germany_regression_output.png
```

## Notes on the Stata code
The report visibly documents the regression commands as:
- `reg C1 D1` for the U.S.
- `reg F1 G1` for Germany

The code file also includes the graph commands consistent with the methodology described in the report. The exact raw Excel dataset is **not included in the uploaded materials**, so the `.do` file uses the variable names documented in the report and should be run after importing/cleaning the corresponding data.

## Source
Prepared from the supplied Macro PPT and Macro report. The graphs and regression-output images in this repository are cropped from the supplied presentation rather than recreated from invented data.
