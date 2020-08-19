## Coursera: Exploratory Data Analysis
## Plotting Project - plot 1
## Last Edited: 19 Aug 2020


source("ReadingData.R") #Reads the .txt data into a data frame 

# Calling graphics device 
png(file = "plot1.png",width = 480, height = 480)

with(electric_data, hist(Global_active_power,
                         col = "red",
                         main = "Global Active Power", 
                         xlab = "Gloval Active Power (kilowatts)"))

# Closing the graphics device 
dev.off()
