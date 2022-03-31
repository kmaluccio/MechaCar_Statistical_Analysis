# MechaCar_Statistical_Analysis
In this project, we perform a multiple linear regression analysis, collect summary statistics and run t-tests using the data. Then, we create a statistical analysis to compare the vehicle performances between cars at MechaCar and cars at other manufacturers.

## Linear Regression to Predict MPG
- After performing the linear regression analysis in R, we can see the vehicle length and ground clearance provide a non-random amount of variance to the mpg values in the dataset since they have a very small p value which means they have a high level of significance
- The slope of the linear model is considered to be nonzero because the p-value is less than 0.05
- The multiple R squared value is about 0.7149 while the adjusted R squared value is 0.6825. Since we are considering six variables, we will look at the adjusted value which means about 68% of the time the model will predict mpg values correctly. Although this is greater than one half, it is not the most effective prediction because it is not above 0.9 or even above 0.7. Since the value is above 0.5, it does catch our attention and is considered to be somewhat effective just not the most effective.


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

Across all manufacturing lots, we can see from the t-test that the p-value is 0.0603; meaning there is a 6% chance that the mean occurs by random chance. Although this is low, we want below 0.05 (5%) in order for this to be considered a significant result. The results of the t-test are below:

![T-test](https://github.com/kmaluccio/MechaCar_Statistical_Analysis/blob/main/t-testA.png)

We then tested each lot individually to compare to the population mean of 1500 pounds per square inch and the results for all three lots are below.

![T-test-lot1](https://github.com/kmaluccio/MechaCar_Statistical_Analysis/blob/main/t-test1.png)

We can see the p-value for Lot 1 equals 1 which tells us that there is no difference between the mean of the PSI in the lot and the population mean other than being due to chance. In this case, the p-value tells us that this data is statistically insignificant.

![T-test-lot2](https://github.com/kmaluccio/MechaCar_Statistical_Analysis/blob/main/t-test2.png)

We can see the p-value for Lot 2 equals 0.607 which implies that this result occurs by random chance about 61% of the time. Again, this is not a statistically significant result.

![T-test-lot3](https://github.com/kmaluccio/MechaCar_Statistical_Analysis/blob/main/t-test3.png)

Finally, we find the p-value for lot 3 to be 0.0417 which is less than 0.05. This makes the data statistically significant since we have about 4% is due to chance and the corresponding confidence level is about 96%.

## Study Design: MechaCar vs Competition

To perform a statistical study comparing MechaCar performance to vehicle performance of other manufacturers.

- questions: what metrics are you going to test? what is the null hypothesis or alternative hypothesis? what statistical test would you use to test the hypothesis? what data is needed to run the statistical test?
- Metrics: we want to test city and highway fuel efficiencies
- Null hypothesis: all of the cars of the same class have the same fuel efficiencies
- Alternative hypothesis: not all of the cars have the same fuel efficiencies
- use ANOVA test and ggplot to complete the analysis for both types of fuel efficiencies and create a visualization to show the results of different cars
- to run the test, we would need to collect fuel efficiency data from cars of all class types; for example, we could collect 100 samples for each car type so for n classes we would get 100n data points to use in our testing
