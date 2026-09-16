*******************************************************
* Phillips Curve Analysis: USA vs Germany
* 2005-2011 quarterly data
*
* Source project:
* Inflation-Unemployment Dynamics during the 2008 Global
* Financial Crisis: A Comparative Phillips Curve Analysis
*
* IMPORTANT:
* The supplied report does not contain the raw Excel file.
* The variable names below follow the variable names shown
* in the documented Stata regression outputs.
*******************************************************

clear all
set more off

*******************************************************
* 1. IMPORT DATA
*******************************************************

* Replace the path with the location of the cleaned data.
* import excel "PHILLIPS CURVE DATA.xlsx", firstrow clear

*******************************************************
* 2. UNITED STATES REGRESSION
*
* The presentation explicitly shows:
* . reg C1 D1
*
* C1 = US inflation
* D1 = US unemployment
*******************************************************

reg C1 D1

*******************************************************
* 3. UNITED STATES PHILLIPS CURVE GRAPH
*
* The methodology describes a scatter plot with a
* quadratic fitted line.
*******************************************************

twoway (scatter C1 D1) (qfit C1 D1), ///
    title("Phillips Curve of US") ///
    xtitle("Unemployment (%)") ///
    ytitle("Inflation (%)")

*******************************************************
* 4. GERMANY REGRESSION
*
* The presentation explicitly shows:
* . reg F1 G1
*
* F1 = Germany inflation
* G1 = Germany unemployment
*******************************************************

reg F1 G1

*******************************************************
* 5. GERMANY PHILLIPS CURVE GRAPH
*******************************************************

twoway (scatter F1 G1) (qfit F1 G1), ///
    title("Phillips Curve of Germany") ///
    xtitle("Unemployment (%)") ///
    ytitle("Inflation (%)")

*******************************************************
* 6. OPTIONAL: EXPORT GRAPHS
*******************************************************

* graph export "graphs/01_phillips_curve_US_2005_2011.png", replace
* graph export "graphs/02_phillips_curve_Germany_2005_2011.png", replace

*******************************************************
* End of do-file
*******************************************************
