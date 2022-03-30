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
print(total_summary)
lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
print(lot_summary) # need to adjust to print the decimals here
