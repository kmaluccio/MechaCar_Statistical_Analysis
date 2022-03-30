# MechaCar_Statistical_Analysis
In this project, we perform a multiple linear regression analysis, collect summary statistics and run t-tests using the data. Then, we create a statistical analysis to compare the vehicle performances between cars at MechaCar and cars at other manufacturers.

## Linear Regression to Predict MPG
- After performing the linear regression analysis in R, we can see the vehicle weight, spoiler angle and AWD provide a non-random amount of variance to the mpg values in the dataset while the most amount of random variance are the vehicle length and ground clearance
- The slope of the linear model is considered to be nonzero because the p-value is less than 0.05
- The multiple R squared value is about 0.712 while the adjusted R squared value is 0.679. Since we are considering six variables, we will look at the adjusted value which means about 68% of the time the model will predict mpg values correctly. Although this is greater than one half, it is not the most effective prediction because it is not above 0.9 or even above 0.7. Since the value is above 0.5, it does catch our attention and is considered to be somewhat effective just not the most effective.

Below shows the output after running the R scripts for the linear regression and the summary statistics.

![Linear Regression output](https://github.com/kmaluccio/MechaCar_Statistical_Analysis/blob/main/multLinReg.png)

![Summary Statistics](https://github.com/kmaluccio/MechaCar_Statistical_Analysis/blob/main/summaryStats.png)

## Summary Statistics on Suspension Coils

