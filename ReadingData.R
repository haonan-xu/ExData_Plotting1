## Coursera: Exploratory Data Analysis
## Plotting Project - Reading Data
## Last Edited: 19 Aug 2020

## This scripts process the Electric Power Data from the .txt file 
## then generate teh data frame that will be called on by plotting 
## functions

library(tidyverse)
library(magrittr)

setwd("/Users/hx2/Downloads/Learning/Coursera_Exploratory_Data_Analysis/Project1/")

electric_data <- read.table("./household_power_consumption.txt", header = T, sep = ";",
                   na.strings = "?")

# The following line selects Feb 1st and 2nd from 2007
# and generates a new column called "date_time" by combining Date and Time columns
electric_data <- electric_data %>% filter(Date %in% c("1/2/2007", "2/2/2007"))%>%
  mutate(date_time = paste(Date,Time,sep = " "))

# The following line converts date_time column from char to "POSIXlt""POSIXt" 
electric_data$date_time <- strptime(electric_data$date_time, "%d/%m/%Y %H:%M:%S")

str(electric_data)

setwd("/Users/hx2/Documents/Rstudio Repo/Coursera_RPlotting_Project1")
