# Dependencies
library(dplyr)
library(jsonlite)
library(ggplot2)
library(tidyverse)

# import and read the data
mechaCarData <- read.csv('MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

# multiple linear regression on all six variables from data
mechaLinReg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechaCarData)
# generate summary statistics
summary(mechaLinReg)

# import and read the data as a table
suspension_table <- read.csv('Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
# create summaries for the table data
total_summary <- suspension_table %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
total_summary
lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
lot_summary 

# t-test to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1500 pounds per square inch
t.test(suspension_table$PSI,mu=1500)

# t-tests using subset() for each lot to see if PSI is statistically different from the population mean by lot
lot1 <- subset(suspension_table, Manufacturing_Lot == 'Lot1')
t.test(lot1$PSI,mu=1500) # t-test for lot 1

lot2 <- subset(suspension_table, Manufacturing_Lot == 'Lot2')
t.test(lot2$PSI,mu=1500) # t-test for lot 2

lot3 <- subset(suspension_table, Manufacturing_Lot == 'Lot3')
t.test(lot3$PSI,mu=1500) # t-test for lot 3
