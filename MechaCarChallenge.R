# Dependencies
library(dplyr)
library(jsonlite)
library(ggplot2)
library(tidyverse)

# import and read the data
mechaCarData <- read.csv('MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

# multiple linear regression on all six variables from data
mechaLinReg <- lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,data=mechaCarData)
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
t.test(lot_summary$Mean_PSI,mu=1500) #not sure which t tests are correct
t.test(lot_summary$Mean_PSI)
t.test(suspension_table$PSI,mu=1500)

# write three more t tests using subset() to see if PSI for each lot is statistically different from the population mean
lot1 <- subset(lot_summary, Manufacturing_Lot == 'Lot1')
lot2 <- subset(lot_summary, Manufacturing_Lot == 'Lot2')
lot3 <- subset(lot_summary, Manufacturing_Lot == 'Lot3')
t.test(suspension_table$PSI,mu=lot1$Mean_PSI)
t.test(suspension_table$PSI,mu=lot2$Mean_PSI)
t.test(suspension_table$PSI,mu=lot3$Mean_PSI)

