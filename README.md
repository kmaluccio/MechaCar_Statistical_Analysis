# MechaCar_Statistical_Analysis
In this project, we perform a multiple linear regression analysis, collect summary statistics and run t-tests using the data. Then, we create a statistical analysis to compare the vehicle performances between cars at MechaCar and cars at other manufacturers.

## Linear Regression to Predict MPG
- After performing the linear regression analysis in R, we can see the vehicle weight, spoiler angle and AWD provide a non-random amount of variance to the mpg values in the dataset while the most amount of random variance are the vehicle length and ground clearance
- The slope of the linear model is considered to be nonzero because the p-value is less than 0.05
- The multiple R squared value is about 0.712 while the adjusted R squared value is 0.679. Since we are considering six variables, we will look at the adjusted value which means about 68% of the time the model will predict mpg values correctly. Although this is greater than one half, it is not the most effective prediction because it is not above 0.9 or even above 0.7. Since the value is above 0.5, it does catch our attention and is considered to be somewhat effective just not the most effective.


![Linear Regression output](https://github.com/kmaluccio/MechaCar_Statistical_Analysis/blob/main/multLinReg.png)

The above show the output for the linear regression after running script in R.

![Summary Statistics](https://github.com/kmaluccio/MechaCar_Statistical_Analysis/blob/main/summaryStats.png)

The above shows the summary statistics calculated in R based on the linear regression.

## Summary Statistics on Suspension Coils

We have calculated the mean, median, variance, and standard deviation of the PSI for all vehicles at MechaCar. Then, we were able to break up these values by the three lots to find that the mean and median in lots 1 and 2 are similar with a smaller variance as opposed to lot 3 which has a large variance with similar mean and median. Below is a screenshot of the total summary and the lot summary statistics that were calculated in R.

![Total Summary Stats](https://github.com/kmaluccio/MechaCar_Statistical_Analysis/blob/main/total_summary.png)

We can see the above showing the statistics for all cars in every lot at MechaCar and the table below breaks it down by lot.

![Total and Lot Summary Stats](https://github.com/kmaluccio/MechaCar_Statistical_Analysis/blob/main/lot_summary.png)

Based on our findings and the design specifications for the MechaCar suspension coils (which dictates that the variance cannot exceed 100 pounds per square inch), we have found that the current manufacturing data mostly meets this specification. In general or overall, for all cars in every lot, the variance is around 62 pounds per square inch which meets the requirements. Looking at each individual lot, lots 1 and 2 also satisfy the specification with a variance of around 1 and 7, respectively. Unfortunately, lot 3 does not meet this design specification because the variance of the suspension coils is 170 which is greater than 100. 

## T-Tests on Suspension Coils

Interpret findings for the t-test results here and put a screenshot of the output from running the R script.

## Study Design: MechaCar vs Competition

description of statistical study that can quantify how the MechaCar performs against competition

- address questions: what metrics are you going to test? what is the null hypothesis or alternative hypothesis? what statistical test would you use to test the hypothesis? what data is needed to run the statistical test?
