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
